package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ua.com.apricotka.entity.GalleryImage;

@Repository
public interface GalleryImageRepository extends CrudRepository<GalleryImage, Integer> {
}
