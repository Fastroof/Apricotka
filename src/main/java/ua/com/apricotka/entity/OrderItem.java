package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "order_items")
public class OrderItem {

    @Id
    @Column(name = "item_id", nullable = false, unique = true, updatable = false)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "apricot_id", nullable = false)
    private Long apricotId;

    @Column(name = "order_id", nullable = false)
    private Long orderId;

    @Column(name = "quantity")
    private Long quantity;
}
