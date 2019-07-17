package pe.edu.unsch.dao;

import java.util.List;

import pe.edu.unsch.entities.Productopedido;

public interface PedidoDao {

	public List <Productopedido> find(Integer id);
}
