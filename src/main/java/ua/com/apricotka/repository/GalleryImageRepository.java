package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import ua.com.apricotka.entity.GalleryImage;

public interface GalleryImageRepository extends CrudRepository<GalleryImage, Integer> {
}
