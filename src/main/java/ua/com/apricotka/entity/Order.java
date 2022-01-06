package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name = "lab3_ld_orders")
public class Order {

    @Id
    @Column(name = "lab3_ld_order_id", nullable = false)
    @GeneratedValue(generator = "increment")
    private int id;

    @Column(name = "lab3_ld_user_id", nullable = false)
    private int userId;

    @Column(name = "lab3_ld_order_date", nullable = false)
    private LocalDateTime orderDate;

    @Column(name = "lab3_ld_total_price", nullable = false)
    private double totalPrice;

    @Column(name = "lab3_ld_order_details")
    private String orderDetails;
}
