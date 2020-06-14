package br.com.usoftware.chefbot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import br.com.usoftware.chefbot.repository.BotRepository;

@Controller
@RequestMapping("/bot")
public class BotController {

	@Autowired
	private BotRepository botRepository;
	
	@GetMapping
	public String list(Model model) {
		
		model.addAttribute("bots", botRepository.findAll());
		
		return "bot-list";
	}
}
