package br.com.usoftware.chefbot.repository;

import org.springframework.data.repository.CrudRepository;

import br.com.usoftware.chefbot.model.Bot;

public interface BotRepository extends CrudRepository<Bot, Long> {

}
