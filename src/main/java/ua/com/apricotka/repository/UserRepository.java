package ua.com.apricotka.repository;

import org.springframework.data.repository.CrudRepository;
import ua.com.apricotka.entity.User;

public interface UserRepository extends CrudRepository<User, Integer> {
}
