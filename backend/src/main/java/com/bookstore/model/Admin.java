package com.bookstore.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "admin_table")
@Data
public class Admin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer adminId;

    @Column(name = "admin_user_name", nullable = false, length = 30)
    private String adminUserName;

    @Column(name = "admin_password", nullable = false, length = 30)
    private String adminPassword;

}
