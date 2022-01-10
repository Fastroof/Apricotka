package ua.com.apricotka.request;

import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderItemRequest {
    private long apricotId;
    private long quantity;
    private double price;
    private String apricotName;
}
