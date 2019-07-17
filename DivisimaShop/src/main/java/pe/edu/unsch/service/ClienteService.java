package pe.edu.unsch.service;

import java.util.List;

import pe.edu.unsch.entities.Cliente;

public interface ClienteService {
	
	public List<Cliente> findAll();
	
	public Cliente find(Integer id);
	
	public Cliente login(String email, String password);

}
