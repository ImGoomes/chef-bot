package br.com.usoftware.chefbot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import br.com.usoftware.chefbot.repository.SegmentRepository;

@Controller
@RequestMapping("/segment")
public class SegmentController {

	@Autowired
	private SegmentRepository segmentRepository;
	
	@GetMapping
	public String list(Model model) {
		
		model.addAttribute("segments", segmentRepository.findAll());
		
		return "segment-list";
	}
}
