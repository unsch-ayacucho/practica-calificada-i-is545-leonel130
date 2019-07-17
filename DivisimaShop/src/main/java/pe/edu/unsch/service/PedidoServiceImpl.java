package pe.edu.unsch.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.unsch.dao.PedidoDao;
import pe.edu.unsch.entities.Productopedido;


@Service("PedidoService")
@Transactional
public class PedidoServiceImpl implements PedidoService{

	
	@Autowired
	private PedidoDao pedidoDao;

	@Override
	public List<Productopedido> find(Integer id) {
		// TODO Auto-generated method stub
		return pedidoDao.find(id);
	}
	

	
	
}
