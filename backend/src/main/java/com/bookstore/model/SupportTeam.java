package com.bookstore.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "support_team_table")
@Data
public class SupportTeam {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer supportId;

    @Column(name = "support_user_name", nullable = false, length = 30)
    private String supportUserName;

    @Column(name = "support_password", nullable = false, length = 30)
    private String supportPassword;
}
