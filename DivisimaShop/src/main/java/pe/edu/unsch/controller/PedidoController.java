package pe.edu.unsch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.edu.unsch.entities.Pedido;
import pe.edu.unsch.entities.Productopedido;
import pe.edu.unsch.service.PedidoService;

@Controller
@RequestMapping("/pedido")
public class PedidoController {

	@Autowired
	private PedidoService pedidoService;
	
	@GetMapping("/detalle/{id}")
	public String detalle(@PathVariable("id") Integer id, Model model){
		model.addAttribute("Titulo","cliente");
		
		model.addAttribute("pedidodetalle",pedidoService.find(id));
		model.addAttribute("classActive","active");
		return "views/producto";
	}
}
