package pe.edu.unsch.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.unsch.dao.ClienteDao;
import pe.edu.unsch.entities.Cliente;



@Service("clienteService")
@Transactional
public class ClienteServiceImpl implements ClienteService {
		
	@Autowired
	private ClienteDao clienteDao;

	@Override
	public List<Cliente> findAll() {
		// TODO Auto-generated method stub
		return clienteDao.findAll();
	}

	@Override
	public Cliente find(Integer id) {
		// TODO Auto-generated method stub
		return clienteDao.find(id);
	}

	@Override
	public Cliente login(String email, String password) {
		// TODO Auto-generated method stub
		return clienteDao.login(email, password);
	}
	
	
}
