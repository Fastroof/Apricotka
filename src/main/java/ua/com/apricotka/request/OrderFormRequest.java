package ua.com.apricotka.request;

import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderFormRequest {
    private String fname;
    private String email;
    private String adr;
    private String city;
    private String payment;
}
