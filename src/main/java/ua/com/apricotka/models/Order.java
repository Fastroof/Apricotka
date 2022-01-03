package ua.com.apricotka.models;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Order {

    private int orderId;
    private User user;
    private List<OrderItem> orderItems = new ArrayList<>();
    private LocalDateTime orderDate;
    private double totalPrice;
    private String orderDetails;

    public Order(int orderId, User user, List<OrderItem> orderItems) {
        this.orderId = orderId;
        this.user = user;
        this.orderItems = orderItems;
        this.orderDate = LocalDateTime.now();
        orderItems.forEach(orderItem -> totalPrice += orderItem.getApricot().getPrice()*orderItem.getQuantity());
        this.orderDetails = "Created";
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(String orderDetails) {
        this.orderDetails = orderDetails;
    }
}
