package com.bookstore.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "contact_table")
@Data
public class Contact {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer contactId;

    @Column(name = "contact_full_name", nullable = false, length = 100)
    private String contactFullName;

    @Column(name = "contact_actual_id", nullable = false, length = 100)
    private String contactActualId;

    @Column(name = "contact_mobile_number", nullable = false, length = 15)
    private String contactMobileNumber;

    @Column(name = "contact_email", nullable = false, length = 60)
    private String contactEmail;

    @Lob
    @Column(name = "contact_message", nullable = false, columnDefinition = "LONGTEXT")
    private String contactMessage;

    @Column(name = "contact_time", nullable = false, length = 20)
    private String contactTime;
}
