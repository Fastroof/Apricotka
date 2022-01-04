package ua.com.apricotka.entity;

import javax.persistence.*;

@Entity
@Table(name = "lab3_ld_users")
public class User {

    @Id
    @Column(name = "lab3_ld_user_id", nullable = false)
    @GeneratedValue(generator = "increment")
    private int id;

    @Column(name = "lab3_ld_username", nullable = false)
    private String username;

    @Column(name = "lab3_ld_password", nullable = false)
    private String password;

    @Column(name = "lab3_ld_first_name", nullable = false)
    private String firstName;

    @Column(name = "lab3_ld_last_name", nullable = false)
    private String lastName;

    @Column(name = "lab3_ld_shipping_address")
    private String shippingAddress;

    public int getUserId() {
        return id;
    }

    public void setUserId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }
}
