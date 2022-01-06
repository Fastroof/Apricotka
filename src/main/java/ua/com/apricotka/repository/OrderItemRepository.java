package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ua.com.apricotka.entity.OrderItem;

@Repository
public interface OrderItemRepository extends CrudRepository<OrderItem, Integer> {
}
