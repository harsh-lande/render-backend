package com.bookstore.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "register_table")
@Data
public class Register {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer registerId;

    @Column(name = "register_full_name", nullable = false, length = 100)
    private String registerFullName;

    @Column(name = "register_user_name", nullable = false, length = 50)
    private String registerUserName;

    @Column(name = "register_password", nullable = false, length = 255) // Expanded to 255 for BCrypt hash support
    private String registerPassword;

    @Column(name = "register_contact_number", nullable = false, length = 15)
    private String registerContactNumber;

    @Column(name = "register_email", nullable = false, length = 60)
    private String registerEmail;

    @Column(name = "register_question", nullable = false, length = 100)
    private String registerQuestion;

    @Column(name = "register_answer", nullable = false, length = 50)
    private String registerAnswer;

    @Column(name = "register_profile_picture", nullable = false, length = 200)
    private String registerProfilePicture = "profile_img/profile_default_picture.png";

    @Column(name = "register_time", nullable = false, length = 20)
    private String registerTime;
}
