package com.bookstore.dto;

import lombok.Data;

@Data
public class RegisterRequest {
    private String fullName;
    private String userName;
    private String password;
    private String contactNumber;
    private String email;
    private String question;
    private String answer;
}
