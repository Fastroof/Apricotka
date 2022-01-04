package ua.com.apricotka.entity;

import javax.persistence.*;

@Entity
@Table(name = "lab3_ld_gallery")
public class Gallery {
    @Id
    @Column(name = "lab3_ld_group_id", nullable = false)
    @GeneratedValue(generator = "increment")
    private int id;

    @Column(name = "lab3_ld_group_name")
    private String groupName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
}
