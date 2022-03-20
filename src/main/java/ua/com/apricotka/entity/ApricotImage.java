package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "apricot_images")
public class ApricotImage {

    @Id
    @Column(name = "apricot_image_id", nullable = false, unique = true)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "apricot_id", nullable = false)
    private Long apricotId;

    @Column(name = "image_file", length = 120)
    private String file;
}
