package pe.edu.unsch.dao;

import java.util.List;

import pe.edu.unsch.entities.Cliente;

public interface ClienteDao {
	
	public List<Cliente> findAll();
	
	public Cliente find(Integer id);
	
	public Cliente login(String email, String password);
}
