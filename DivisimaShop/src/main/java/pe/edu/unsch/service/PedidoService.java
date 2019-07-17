package pe.edu.unsch.service;

import java.util.List;

import pe.edu.unsch.entities.Productopedido;

public interface PedidoService {

	public List <Productopedido> find(Integer id);
}
