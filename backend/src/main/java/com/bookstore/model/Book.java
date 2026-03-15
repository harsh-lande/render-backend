package com.bookstore.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "book_table")
@Data
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer bookId;

    @Column(name = "book_name", nullable = false, length = 50)
    private String bookName;

    @Column(name = "book_category", nullable = false, length = 50)
    private String bookCategory;

    @Lob
    @Column(name = "book_description", nullable = false, columnDefinition = "LONGTEXT")
    private String bookDescription;

    @Column(name = "book_price", nullable = false)
    private Integer bookPrice;

    @Column(name = "book_img", nullable = false, length = 100)
    private String bookImg;

    @Column(name = "book_time", nullable = false)
    private Integer bookTime;
}
