package br.com.usoftware.chefbot.repository;

import org.springframework.data.repository.CrudRepository;
import br.com.usoftware.chefbot.model.User;

public interface UserRepository extends CrudRepository<User, Long> {

}
