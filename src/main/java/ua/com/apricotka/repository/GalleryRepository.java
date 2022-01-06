package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ua.com.apricotka.entity.Gallery;

@Repository
public interface GalleryRepository extends CrudRepository<Gallery, Integer> {
}
