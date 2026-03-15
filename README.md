# NexBook - Modern Full-Stack Bookstore Management System

NexBook is a complete overhaul of a legacy PHP/MySQL bookstore application, transformed into a modern, scalable, and visually stunning Full-Stack web application. It features a robust **Java Spring Boot** backend working in tandem with a premium, responsive **HTML/CSS/JS** frontend utilizing **Tailwind CSS**.

## ✨ Features
- **Modern User Interface**: A premium "glassmorphism" aesthetic with vibrant gradients, custom typography, animations, and smooth transitions powered by Tailwind.
- **Role-based Authentication**: JWT-based Secure Login & Registration for regular Users and Admins.
- **Dynamic Book Library**: Search, filter by category, and view detailed information for books fetched dynamically from the REST API.
- **Cart & Order System**: Complete e-commerce flow utilizing local storage state management and backend order placement.
- **Admin Dashboard**: Dedicated portal for administrators to manage books (add/update/delete) and view recent user orders.
- **Contact & Support Module**: Users can reliably send messages and support tickets directly to the backend.
- **Secure Codebase**: Prepared with Spring Data JPA preventing remote SQL injection, modern secure coding practices applied throughout.

## 🛠 Technologies Used
### Backend
- **Java 17**
- **Spring Boot 3** (Web, Data JPA, Security)
- **JSON Web Tokens (JWT)** for stateless authentication.
- **MySQL Database**
- **Maven** for dependency management.

### Frontend
- **Vanilla HTML5 & CSS3** coupled with **Tailwind CSS** (via CDN for zero-build-step deployment).
- **Vanilla JavaScript (ES6+)** for seamless API integration (`fetch`) and dynamic DOM manipulation.
- **FontAwesome** for icons.

## 🚀 Setup Instructions

### Prerequisites
- Java Development Kit (JDK) 17+ installed.
- MySQL Server (XAMPP/WAMP or local MySQL server).
- Maven installed (optional, some IDEs bundle this).

### 1. Database Configuration
1. Open your MySQL client (e.g., phpMyAdmin or MySQL Workbench).
2. Create a database named `bookstoredatabase`.
3. Import the provided `bookstoredatabase.sql` file located in the `/database` (or root) directory.
   - *Default Admin credentials populated in the DB: Username: `admin`, Password: `admin`.*

### 2. Running the Backend (Spring Boot)
1. Open terminal and navigate to the `/backend` directory.
2. Update the database credentials in `src/main/resources/application.properties` if your local MySQL root password is not blank.
3. Run the application:
   ```bash
   mvn spring-boot:run
   ```
   *The server will start on `http://localhost:8080`.*

### 3. Running the Frontend
The frontend requires **zero build steps**. 
1. Navigate to the `/frontend` directory.
2. Open `index.html` in your favorite browser. 
   - *For the best experience solving potential local CORS blocks, serve it via a simple Local Web Server (e.g., VS Code "Live Server" extension).*

## ☁️ Deployment Guide

### Deploying the Backend on Render
1. Push the `/backend` folder to a GitHub repository.
2. Log in to Render and create a **New Web Service**.
3. Connect your repository. Render automatically detects the `pom.xml`.
4. Define the Build Command: `mvn clean package -DskipTests`
5. Define the Start Command: `java -jar target/backend-0.0.1-SNAPSHOT.jar`
6. Add environment variables:
   - `SPRING_DATASOURCE_URL`: (Your remote managed MySQL string, e.g. Aiven, Clever-Cloud)
   - `SPRING_DATASOURCE_USERNAME`: (Remote DB username)
   - `SPRING_DATASOURCE_PASSWORD`: (Remote DB password)

### Deploying the Frontend on Netlify
1. Log in to Netlify and create a new site by dragging and dropping the entire `/frontend` folder into the Netlify console, OR connect it manually via GitHub.
2. Ensure the base directory is `/frontend`.
3. No build command is required since the frontend uses raw HTML/CSS/JS + Tailwind CDN.
4. **Important**: Before deploying, update the `API_BASE_URL` in `frontend/js/main.js` from `http://localhost:8080/api` to your live deployed backend URL from Render.

---
**Created securely and beautifully.**
