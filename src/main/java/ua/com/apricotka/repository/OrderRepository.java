package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ua.com.apricotka.entity.Order;

@Repository
public interface OrderRepository extends CrudRepository<Order, Integer> {
}
