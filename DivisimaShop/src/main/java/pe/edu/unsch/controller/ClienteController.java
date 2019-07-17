package pe.edu.unsch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pe.edu.unsch.entities.Cliente;
import pe.edu.unsch.service.ClienteService;

@Controller
@SessionAttributes("account")
@RequestMapping("/cliente")
public class ClienteController {
		
	@Autowired
	private ClienteService clienteService;
	
	@GetMapping("/listar")
	public String listar(Model model) {
		model.addAttribute("","");
		model.addAttribute("cliente",clienteService.findAll());
		return "views/cliente";
	}
	
	@GetMapping("/detalle/{id}")
	public String detalle(@PathVariable("id") Integer id, Model model){
		Cliente cliente=clienteService.find(id);
		model.addAttribute("Titulo","cliente");
		model.addAttribute("detalle",cliente.getPedidos());
		model.addAttribute("classActive","active");

		return "views/historial";
	}
	
	@PostMapping("/login")
	public String myaccount(HttpServletRequest request, HttpSession session,RedirectAttributes redir,Model model) {
		redir.addFlashAttribute("account", new Cliente());
		Cliente account = clienteService.login(request.getParameter("email"),
		request.getParameter("password"));
		//System.out.println(request.getParameter("email"));
		//System.out.println(request.getParameter("password"));
		if (account == null) {
			redir.addFlashAttribute("error", "Cuenta inválida");
			return "redirect:/cliente/login";
			} 
		else {
			session.setAttribute("email", account.getEmail());
			System.out.println("---------------------------");
			System.out.println(account.getIdCliente());
			System.out.println(account);
			model.addAttribute("persona",account);
			
			return "views/index";
			}
	}	

	@GetMapping("/login")
	public String customerorders(Model model) {
		model.addAttribute("titulo", "My account : e-commerce");
		model.addAttribute("account", new Cliente());
		return "views/login";
	}
	
	
	
}
