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
    @Column(name = "lab3_ld_image_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "lab3_ld_group_id", nullable = false)
    private int groupId;

    @Column(name = "lab3_ld_image_file", length = 120)
    private String file;
}
