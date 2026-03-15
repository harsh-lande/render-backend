package com.bookstore.controller;

import com.bookstore.dto.OrderRequest;
import com.bookstore.model.Order;
import com.bookstore.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/orders")
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @PostMapping
    public ResponseEntity<Order> placeOrder(@RequestBody OrderRequest request) {
        return ResponseEntity.ok(orderService.placeOrder(request));
    }

    @GetMapping("/user/{registerId}")
    public ResponseEntity<List<Order>> getOrdersByUser(@PathVariable Integer registerId) {
        return ResponseEntity.ok(orderService.getOrdersByUser(registerId));
    }
}
