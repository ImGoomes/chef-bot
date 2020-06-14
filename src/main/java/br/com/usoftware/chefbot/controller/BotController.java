package br.com.usoftware.chefbot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import br.com.usoftware.chefbot.model.Bot;
import br.com.usoftware.chefbot.repository.BotRepository;

@Controller
@RequestMapping("/bot")
public class BotController {

	@Autowired
	private BotRepository botRepository;
	
	@GetMapping("/form")
	public String form(@RequestParam String page,
					@RequestParam(required = false) Long id,
					@ModelAttribute("bot") Bot bot,
					Model model) {
		
		if ("bot-edit".equals(page)) {
			model.addAttribute("bot", botRepository.findById(id));
		}
		
		return page;
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable Long id, Model model) {
		
		model.addAttribute("bot", botRepository.findById(id));
		
		return "bot-detail";
	}
	
	@GetMapping
	public String list(Model model) {
		
		model.addAttribute("bots", botRepository.findAll());
		
		return "bot-list";
	}
	
	@PostMapping
	public String save(Bot bot, RedirectAttributes ra) {
		
		botRepository.save(bot);
		ra.addFlashAttribute("messages", "Bot salvo com sucesso!");
		
		return "redirect:/bot";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable Long id,
					Bot bot,
					RedirectAttributes ra) {
		
		botRepository.save(bot);
		ra.addFlashAttribute("menssages", "Bot atualizado com sucesso!");
		
		return "redirect:/bot";
	}
	
	@DeleteMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes ra) {
		
		botRepository.deleteById(id);
		ra.addFlashAttribute("messages", "Bot removido com sucesso!");
		
		return "redirect:/bot";
	}
	
}
