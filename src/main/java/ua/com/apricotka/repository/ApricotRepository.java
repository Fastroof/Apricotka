package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import ua.com.apricotka.entity.Apricot;

public interface ApricotRepository extends CrudRepository<Apricot, Integer> {
}
