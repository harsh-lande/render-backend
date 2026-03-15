package com.bookstore.repository;

import com.bookstore.model.Register;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RegisterRepository extends JpaRepository<Register, Integer> {
    Optional<Register> findByRegisterUserName(String registerUserName);
    boolean existsByRegisterUserName(String registerUserName);
    boolean existsByRegisterEmail(String registerEmail);
}
