package com.bookstore.model;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDateTime;

@Entity
@Table(name = "user_support_table")
@Data
public class UserSupport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userSupportId;

    @Column(name = "user_support_actual_id", nullable = false)
    private Integer userSupportActualId;

    @Column(name = "user_support_email", nullable = false, length = 255)
    private String userSupportEmail;

    @Column(name = "user_support_subject", nullable = false, length = 255)
    private String userSupportSubject;

    @Lob
    @Column(name = "user_support_message", nullable = false, columnDefinition = "TEXT")
    private String userSupportMessage;

    @Column(name = "user_support_status", columnDefinition = "ENUM('Open', 'Closed') DEFAULT 'Open'")
    private String userSupportStatus = "Open";

    @Column(name = "user_support_created_at", nullable = false, updatable = false, insertable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private LocalDateTime userSupportCreatedAt;
}
