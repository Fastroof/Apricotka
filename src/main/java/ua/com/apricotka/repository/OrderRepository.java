package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import ua.com.apricotka.entity.Order;

public interface OrderRepository extends CrudRepository<Order, Integer> {
}
