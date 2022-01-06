package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "lab3_ld_order_items")
public class OrderItem {

    @Id
    @Column(name = "lab3_ld_item_id", nullable = false)
    @GeneratedValue(generator = "increment")
    private int id;

    @Column(name = "lab3_ld_apricot_id", nullable = false)
    private int apricotId;

    @Column(name = "lab3_ld_order_id", nullable = false)
    private int orderId;

    @Column(name = "lab3_ld_quantity")
    private long quantity;
}
