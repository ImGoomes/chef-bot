package br.com.usoftware.chefbot.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import br.com.usoftware.chefbot.model.User;
import br.com.usoftware.chefbot.repository.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/form")
	public String form(@RequestParam String page,
					@RequestParam(required = false) Long id,
					@ModelAttribute("user") User user,
					Model model) {
		
		if ("user-edit".equals(page)) {
			model.addAttribute("user", userRepository.findById(id).get());
		}
		
		return page;
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable Long id, Model model) {
		
		model.addAttribute("user", userRepository.findById(id).get());
		
		return "user-detail";
	}
	
	@GetMapping
	public String list(Model model) {
		
		model.addAttribute("users", userRepository.findAll());
		
		return "user-list";
	}
	
	@PostMapping
	public String save(@Valid User user, BindingResult br, RedirectAttributes ra) {
		
		if (br.hasErrors()) {
			return "user-new";
		}
		
		userRepository.save(user);
		ra.addFlashAttribute("messages", "User salvo com sucesso!");
		
		return "redirect:/user";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable Long id,
					User user,
					RedirectAttributes ra) {
		
		user.setId(id);
		userRepository.save(user);
		ra.addFlashAttribute("menssages", "User atualizado com sucesso!");
		
		return "redirect:/user";
	}
	
	@DeleteMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes ra) {
		
		userRepository.deleteById(id);
		ra.addFlashAttribute("messages", "User removido com sucesso!");
		
		return "redirect:/user";
	}
	
}
