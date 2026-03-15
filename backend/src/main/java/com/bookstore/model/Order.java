package com.bookstore.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "order_table")
@Data
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer orderId;

    @Column(name = "order_name", nullable = false, length = 100)
    private String orderName;

    @Column(name = "order_address", nullable = false, length = 200)
    private String orderAddress;

    @Column(name = "order_pincode", nullable = false)
    private Integer orderPincode;

    @Column(name = "order_city", nullable = false, length = 50)
    private String orderCity;

    @Column(name = "order_state", nullable = false, length = 50)
    private String orderState;

    @Column(name = "order_mobile", nullable = false, length = 15)
    private String orderMobile;

    @Column(name = "order_register_id", nullable = false)
    private Integer orderRegisterId;

    @Column(name = "order_total_price", nullable = false)
    private Integer orderTotalPrice;

    @Lob
    @Column(name = "order_list_books", nullable = false, columnDefinition = "LONGTEXT")
    private String orderListBooks;
}
