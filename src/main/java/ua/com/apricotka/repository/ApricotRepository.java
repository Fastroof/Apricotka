package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ua.com.apricotka.entity.Apricot;

@Repository
public interface ApricotRepository extends CrudRepository<Apricot, Integer> {
}
