package com.bookstore.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "category_table")
@Data
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer categoryId;

    @Column(name = "category_name", nullable = false, length = 50)
    private String categoryName;

}
