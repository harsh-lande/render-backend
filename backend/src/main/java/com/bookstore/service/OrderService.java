package com.bookstore.service;

import com.bookstore.dto.OrderRequest;
import com.bookstore.model.Order;
import com.bookstore.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;

    public Order placeOrder(OrderRequest request) {
        Order order = new Order();
        order.setOrderName(request.getOrderName());
        order.setOrderAddress(request.getOrderAddress());
        order.setOrderPincode(request.getOrderPincode());
        order.setOrderCity(request.getOrderCity());
        order.setOrderState(request.getOrderState());
        order.setOrderMobile(request.getOrderMobile());
        order.setOrderRegisterId(request.getOrderRegisterId());
        order.setOrderTotalPrice(request.getOrderTotalPrice());
        order.setOrderListBooks(request.getOrderListBooks());

        return orderRepository.save(order);
    }

    public List<Order> getOrdersByUser(Integer registerId) {
        return orderRepository.findByOrderRegisterId(registerId);
    }

    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }
}
