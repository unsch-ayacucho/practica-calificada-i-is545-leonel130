package pe.edu.unsch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class index {

	@GetMapping({"/","/home"})
	public String home(){
		return "redirect:/cliente/login";
	}
	
	@GetMapping("/index")
	public String index(){
		return "views/index";
	}
	
	@GetMapping("/historial")
	public String historial(){
		return "views/historial";
	}
	
	@GetMapping("/cliente")
	public String cliente(){
		return "views/cliente";
	}
	

}
