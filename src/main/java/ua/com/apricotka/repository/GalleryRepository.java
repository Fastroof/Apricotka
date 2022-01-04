package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import ua.com.apricotka.entity.Gallery;

public interface GalleryRepository extends CrudRepository<Gallery, Integer> {
}
