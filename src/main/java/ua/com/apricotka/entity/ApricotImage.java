package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "lab3_ld_apricot_images")
public class ApricotImage {

    @Id
    @Column(name = "lab3_ld_apricot_image_id", nullable = false, unique = true)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "lab3_ld_apricot_id", nullable = false)
    private Long apricotId;

    @Column(name = "lab3_ld_image_file", length = 120)
    private String file;
}
