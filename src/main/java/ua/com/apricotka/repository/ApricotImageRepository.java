package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import ua.com.apricotka.entity.ApricotImage;

public interface ApricotImageRepository extends CrudRepository<ApricotImage, Integer> {
}
