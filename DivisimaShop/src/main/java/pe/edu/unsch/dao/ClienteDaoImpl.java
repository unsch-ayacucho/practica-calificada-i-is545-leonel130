package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;


import pe.edu.unsch.entities.Cliente;

@Repository("categoriaDao")
public class ClienteDaoImpl implements ClienteDao {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Cliente> findAll() {
		// TODO Auto-generated method stub
		return em.createQuery("from Cliente",Cliente.class).getResultList();
	}

	@Override
	public Cliente find(Integer id) {
		// TODO Auto-generated method stub
		return (Cliente) em.find(Cliente.class, id);
	}

	@Override
	public Cliente login(String email, String password) {
		// TODO Auto-generated method stub
		try {
		return (Cliente) em.createQuery(" from Cliente "
										+ " where email =: email and "
										+ " contra =: contra ")
										.setParameter("email", email)
										.setParameter("contra", password)
										.getSingleResult();
		}catch(Exception e) {
			e.getMessage();
			System.out.println("catch");
			return null;
		}
	}

}
