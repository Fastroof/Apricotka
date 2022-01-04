package ua.com.apricotka.entity;

import javax.persistence.*;

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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getApricotId() {
        return apricotId;
    }

    public void setApricotId(int apricotId) {
        this.apricotId = apricotId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }
}
