package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "lab3_ld_gallery_images")
public class GalleryImage {

    @Id
    @Column(name = "lab3_ld_image_id", nullable = false, unique = true)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "lab3_ld_group_id", nullable = false)
    private Long groupId;

    @Column(name = "lab3_ld_image_file", length = 120)
    private String file;
}
