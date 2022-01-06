package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "lab3_ld_gallery")
public class Gallery {
    @Id
    @Column(name = "lab3_ld_group_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "lab3_ld_group_name")
    private String groupName;
}
