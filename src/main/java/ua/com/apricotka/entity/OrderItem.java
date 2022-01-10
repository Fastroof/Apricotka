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
    @Column(name = "lab3_ld_item_id", nullable = false, unique = true, updatable = false)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "lab3_ld_apricot_id", nullable = false)
    private Long apricotId;

    @Column(name = "lab3_ld_order_id", nullable = false)
    private Long orderId;

    @Column(name = "lab3_ld_quantity")
    private Long quantity;
}
