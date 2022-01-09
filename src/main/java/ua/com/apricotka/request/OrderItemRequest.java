package ua.com.apricotka.request;

import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@NoArgsConstructor
@ToString
public class OrderItemRequest {
    private long apricotId;
    private long quantity;
    private double price;
    private String apricotName;

    public OrderItemRequest(long apricotId, long quantity, double price, String apricotName) {
        this.apricotId = apricotId;
        this.quantity = quantity;
        this.price = price;
        this.apricotName = apricotName;
    }
}
