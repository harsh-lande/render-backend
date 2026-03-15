package com.bookstore.service;

import com.bookstore.model.Admin;
import com.bookstore.model.Register;
import com.bookstore.repository.AdminRepository;
import com.bookstore.repository.RegisterRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {

    private final RegisterRepository registerRepository;
    private final AdminRepository adminRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // Check if admin
        Optional<Admin> adminOpt = adminRepository.findByAdminUserName(username);
        if (adminOpt.isPresent()) {
            return new User(adminOpt.get().getAdminUserName(), 
                    adminOpt.get().getAdminPassword(), 
                    Collections.singleton(new SimpleGrantedAuthority("ROLE_ADMIN")));
        }

        // Check if regular user
        Optional<Register> registerOpt = registerRepository.findByRegisterUserName(username);
        if (registerOpt.isPresent()) {
            return new User(registerOpt.get().getRegisterUserName(), 
                    registerOpt.get().getRegisterPassword(), 
                    Collections.singleton(new SimpleGrantedAuthority("ROLE_USER")));
        }

        throw new UsernameNotFoundException("User not found with username: " + username);
    }
}
