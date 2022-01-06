package ua.com.apricotka.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "lab3_ld_apricots")
public class Apricot {

    @Id
    @Column(name = "lab3_ld_apricot_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "lab3_ld_apricot_name", nullable = false, length = 30)
    private String name;

    @Column(name = "lab3_ld_info", nullable = false, length = 1000)
    private String info;

    @Column(name = "lab3_ld_price", nullable = false)
    private double price;
}
