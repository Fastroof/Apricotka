package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import ua.com.apricotka.entity.OrderItem;

public interface OrderItemRepository extends CrudRepository<OrderItem, Integer> {
}
