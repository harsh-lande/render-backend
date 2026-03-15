package com.bookstore.service;

import com.bookstore.dto.AuthResponse;
import com.bookstore.dto.LoginRequest;
import com.bookstore.dto.RegisterRequest;
import com.bookstore.model.Register;
import com.bookstore.repository.RegisterRepository;
import com.bookstore.security.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import java.time.Instant;

@Service
@RequiredArgsConstructor
public class AuthService {

    private final RegisterRepository registerRepository;
    private final JwtUtil jwtUtil;
    private final AuthenticationManager authenticationManager;
    private final UserDetailsService userDetailsService;

    public AuthResponse login(LoginRequest request) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        request.getUsername(),
                        request.getPassword()
                )
        );
        UserDetails userDetails = userDetailsService.loadUserByUsername(request.getUsername());
        String jwtToken = jwtUtil.generateToken(userDetails, new java.util.HashMap<>());
        
        String role = userDetails.getAuthorities().iterator().next().getAuthority();
        return AuthResponse.builder()
                .token(jwtToken)
                .username(request.getUsername())
                .role(role)
                .build();
    }

    public AuthResponse register(RegisterRequest request) {
        if(registerRepository.existsByRegisterUserName(request.getUserName())) {
            throw new RuntimeException("Username already exists");
        }

        Register user = new Register();
        user.setRegisterFullName(request.getFullName());
        user.setRegisterUserName(request.getUserName());
        // For security, passwords should be encoded using passwordEncoder.encode(request.getPassword())
        // but due to NoOp logic on legacy db, we'll store as is.
        user.setRegisterPassword(request.getPassword());
        user.setRegisterContactNumber(request.getContactNumber());
        user.setRegisterEmail(request.getEmail());
        user.setRegisterQuestion(request.getQuestion());
        user.setRegisterAnswer(request.getAnswer());
        user.setRegisterTime(String.valueOf(Instant.now().getEpochSecond()));
        
        registerRepository.save(user);

        UserDetails userDetails = userDetailsService.loadUserByUsername(request.getUserName());
        String jwtToken = jwtUtil.generateToken(userDetails, new java.util.HashMap<>());

        return AuthResponse.builder()
                .token(jwtToken)
                .username(request.getUserName())
                .role("ROLE_USER")
                .build();
    }
}
