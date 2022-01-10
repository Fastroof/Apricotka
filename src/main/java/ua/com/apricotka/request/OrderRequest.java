package ua.com.apricotka.request;

import lombok.*;

import java.util.List;

@Getter
@Setter
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class OrderRequest {
    private List<OrderItemRequest> orderItemRequests;
    private double totalPrice;
}
