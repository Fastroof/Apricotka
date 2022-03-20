package ua.com.apricotka.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "apricots")
public class Apricot {

    @Id
    @Column(name = "apricot_id", nullable = false, unique = true)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "apricot_name", nullable = false, length = 100)
    private String name;

    @Column(name = "info", nullable = false, length = 2000)
    private String info;

    @Column(name = "price", nullable = false)
    private Double price;
}
