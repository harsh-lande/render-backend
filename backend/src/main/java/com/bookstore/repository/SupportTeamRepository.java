package com.bookstore.repository;

import com.bookstore.model.SupportTeam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface SupportTeamRepository extends JpaRepository<SupportTeam, Integer> {
    Optional<SupportTeam> findBySupportUserName(String supportUserName);
}
