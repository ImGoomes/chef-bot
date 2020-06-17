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
import br.com.usoftware.chefbot.model.Segment;
import br.com.usoftware.chefbot.repository.BotRepository;
import br.com.usoftware.chefbot.repository.SegmentRepository;

@Controller
@RequestMapping("/segment")
public class SegmentController {

	@Autowired
	private SegmentRepository segmentRepository;
	
	@Autowired
	private BotRepository botRepository;
	
	@GetMapping
	public String list(Model model) {
		
		model.addAttribute("segments", segmentRepository.findAll());
		
		return "segment-list";
	}
	
	@GetMapping("/form")
	public String form(@RequestParam String page,
					@RequestParam(required = false) Long id,
					@ModelAttribute("segment") Segment segment,
					Model model) {
		
		model.addAttribute("bots", botRepository.findAll());
		
		if ("segment-edit".equals(page)) {
			model.addAttribute("segment", segmentRepository.findById(id).get());
		}
		
		return page;
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable Long id, Model model) {
		
		model.addAttribute("segment", segmentRepository.findById(id).get());
		
		return "segment-detail";
	}
	
	@PostMapping
	public String save(Segment segment, RedirectAttributes ra) {
		
		segmentRepository.save(segment);
		ra.addFlashAttribute("messages", "Segmento salvo com sucesso!");
		
		return "redirect:/segment";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable Long id,
					Segment segment,
					RedirectAttributes ra) {
		
		segment.setId(id);
		segmentRepository.save(segment);
		ra.addFlashAttribute("messages", "Segmento atualizado com sucesso!");
		
		return "redirect:/segment";
	}
	
	@DeleteMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes ra) {
		
		segmentRepository.deleteById(id);
		ra.addFlashAttribute("messages", "Segmento removido com sucesso!");
		
		return "redirect:/segment";
	}
}
