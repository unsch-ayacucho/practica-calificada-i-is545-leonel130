package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;


import pe.edu.unsch.entities.Pedido;
import pe.edu.unsch.entities.Productopedido;

@Repository
public class PedidoDaoImpl implements PedidoDao {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Productopedido> find(Integer id) {
		// TODO Auto-generated method stub
		return em.createQuery("from Productopedido"
				+ " where id_pedido_productopedido =: id ",Productopedido .class)
				.setParameter("id", id)
				.getResultList();
	}
	
	/*@Override
	public List <Productopedido> find(Integer id) {
		// TODO Auto-generated method stub
		return em.createQuery("from Productopedido"
				+ " where idPedidoProductopedido =: id ",Productopedido .class)
				.setParameter("id", int)
				.getResultList();
	}*/

	

	
}
