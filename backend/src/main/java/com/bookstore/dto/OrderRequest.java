package com.bookstore.dto;

import lombok.Data;

@Data
public class OrderRequest {
    private String orderName;
    private String orderAddress;
    private Integer orderPincode;
    private String orderCity;
    private String orderState;
    private String orderMobile;
    private Integer orderRegisterId;
    private Integer orderTotalPrice;
    private String orderListBooks;
}
