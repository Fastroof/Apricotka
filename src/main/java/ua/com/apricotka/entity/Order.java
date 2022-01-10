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
    @Column(name = "lab3_ld_order_id", nullable = false, unique = true, updatable = false)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "lab3_ld_user_id", nullable = false)
    private Long userId;

    @Column(name = "lab3_ld_order_date", nullable = false)
    private LocalDateTime orderDate;

    @Column(name = "lab3_ld_total_price", nullable = false)
    private Double totalPrice;

    @Column(name = "lab3_ld_order_details")
    private String orderDetails;

    @Column(name = "lab3_ld_fullname")
    private String fullname;

    @Column(name = "lab3_ld_email")
    private String email;

    @Column(name = "lab3_ld_address")
    private String address;

    @Column(name = "lab3_ld_city")
    private String city;

    @Column(name = "lab3_ld_payment")
    private String payment;
}
