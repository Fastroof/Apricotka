package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "gallery")
public class Gallery {

    @Id
    @Column(name = "group_id", nullable = false, unique = true)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "group_name")
    private String groupName;
}
