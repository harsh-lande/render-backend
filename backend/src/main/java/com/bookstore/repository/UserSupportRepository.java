package com.bookstore.repository;

import com.bookstore.model.UserSupport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserSupportRepository extends JpaRepository<UserSupport, Integer> {
}
