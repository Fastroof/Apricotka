package ua.com.apricotka.entity;

import javax.persistence.*;

@Entity
@Table(name = "lab3_ld_apricot_images")
public class ApricotImages {

    @Id
    @Column(name = "lab3_ld_apricot_image_id", nullable = false)
    @GeneratedValue(generator = "increment")
    private int id;

    @Column(name = "lab3_ld_apricot_id", nullable = false)
    private int apricotId;

    @Column(name = "lab3_ld_image_file", length = 120)
    private String file;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getApricotId() {
        return apricotId;
    }

    public void setApricotId(int apricotId) {
        this.apricotId = apricotId;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }
}
