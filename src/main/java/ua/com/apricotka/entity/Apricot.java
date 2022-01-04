package ua.com.apricotka.entity;

import javax.persistence.*;

@Entity
@Table(name = "lab3_ld_apricots")
public class Apricot {

    @Id
    @Column(name = "lab3_ld_apricot_id")
    @GeneratedValue(generator = "increment")
    private int id;

    @Column(name = "lab3_ld_apricot_name", nullable = false, length = 30)
    private String name;

    @Column(name = "lab3_ld_info", nullable = false, length = 1000)
    private String info;

    @Column(name = "lab3_ld_price", nullable = false)
    private double price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
