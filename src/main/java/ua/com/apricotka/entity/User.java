package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "lab3_ld_users")
public class User {

    @Id
    @Column(name = "lab3_ld_user_id", nullable = false, unique = true, updatable = false)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "lab3_ld_email", nullable = false, unique = true)
    private String email;

    @Column(name = "lab3_ld_password", nullable = false)
    private String password;

    @Column(name = "lab3_ld_first_name", nullable = false)
    private String firstName;

    @Column(name = "lab3_ld_last_name", nullable = false)
    private String lastName;
}
