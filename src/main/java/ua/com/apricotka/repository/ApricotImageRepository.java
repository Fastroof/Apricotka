package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ua.com.apricotka.entity.ApricotImage;

@Repository
public interface ApricotImageRepository extends CrudRepository<ApricotImage, Long> {
}
