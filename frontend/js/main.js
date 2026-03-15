const API_BASE_URL = 'http://localhost:8080/api';

// Utility to check auth and update UI
function updateAuthUI() {
    const token = localStorage.getItem('token');
    const username = localStorage.getItem('username');
    const authLinks = document.getElementById('auth-links');
    
    if (!authLinks) return;

    if (token && username) {
        authLinks.innerHTML = `
            <span class="text-gray-300 mr-4">Hi, <span class="font-semibold text-white">${username}</span></span>
            <a href="cart.html" class="text-gray-300 hover:text-sky-400 transition-colors mr-4 relative">
                <i class="fas fa-shopping-cart"></i>
                <span id="cart-count" class="absolute -top-2 -right-2 bg-sky-500 text-xs rounded-full h-4 w-4 flex items-center justify-center hidden">0</span>
            </a>
            <button onclick="logout()" class="px-4 py-2 rounded-lg border border-red-500/50 text-red-400 hover:bg-red-500 hover:text-white transition-all text-sm font-medium">Logout</button>
        `;
        updateCartCount();
    } else {
        authLinks.innerHTML = `
            <a href="login.html" class="text-gray-300 hover:text-white transition-colors mr-4 text-sm font-medium">Log In</a>
            <a href="register.html" class="px-4 py-2 rounded-lg bg-gradient-primary text-white transition-all hover:shadow-lg hover:shadow-sky-500/30 text-sm font-medium">Sign Up</a>
        `;
    }
}

function logout() {
    localStorage.removeItem('token');
    localStorage.removeItem('username');
    localStorage.removeItem('role');
    window.location.href = 'index.html';
}

function setupDynamicGlow() {
    const glow = document.createElement('div');
    glow.className = 'bg-glow';
    document.body.appendChild(glow);

    document.addEventListener('mousemove', (e) => {
        glow.style.left = `${e.pageX - 300}px`;
        glow.style.top = `${e.pageY - 300}px`;
    });
}

// Fetch utility wrapper attaching JWT
async function fetchAPI(endpoint, options = {}) {
    const token = localStorage.getItem('token');
    
    const headers = {
        'Content-Type': 'application/json',
        ...options.headers
    };

    if (token) {
        headers['Authorization'] = `Bearer ${token}`;
    }

    try {
        const response = await fetch(`${API_BASE_URL}${endpoint}`, {
            ...options,
            headers
        });

        if (!response.ok) {
            if(response.status === 401 || response.status === 403) {
                // Token invalid
                logout();
            }
            const errorText = await response.text();
            throw new Error(errorText || 'API Request Failed');
        }

        // Return empty object for 204 No Content
        if(response.status === 204) return {};
        
        return await response.json();
    } catch (error) {
        console.error('API Error:', error);
        throw error;
    }
}

// Cart logic using local storage
function updateCartCount() {
    let cart = JSON.parse(localStorage.getItem('cart') || '[]');
    let count = cart.reduce((acc, item) => acc + item.quantity, 0);
    const countEl = document.getElementById('cart-count');
    if(countEl) {
        countEl.textContent = count;
        if(count > 0) countEl.classList.remove('hidden');
        else countEl.classList.add('hidden');
    }
}

function addToCart(bookId, bookName, price, imgPath) {
    if(!localStorage.getItem('token')) {
        window.location.href = 'login.html';
        return;
    }
    
    let cart = JSON.parse(localStorage.getItem('cart') || '[]');
    let existing = cart.find(i => i.id === bookId);
    
    if(existing) {
        existing.quantity += 1;
    } else {
        cart.push({id: bookId, name: bookName, price: price, img: imgPath, quantity: 1});
    }
    
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
    
    // Toast notification
    showToast(`Added ${bookName} to cart!`);
}

function showToast(message) {
    const toast = document.createElement('div');
    toast.className = 'fixed bottom-4 right-4 glass px-6 py-3 rounded-xl border border-sky-500/50 text-white z-50 animate-fade-in flex items-center gap-3';
    toast.innerHTML = `<i class="fas fa-check-circle text-sky-400"></i> ${message}`;
    document.body.appendChild(toast);
    
    setTimeout(() => {
        toast.style.opacity = '0';
        toast.style.transform = 'translateY(20px)';
        toast.style.transition = 'all 0.5s ease';
        setTimeout(() => toast.remove(), 500);
    }, 3000);
}

document.addEventListener('DOMContentLoaded', () => {
    updateAuthUI();
    setupDynamicGlow();
});
