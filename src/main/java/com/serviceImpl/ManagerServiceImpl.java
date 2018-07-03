package com.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.ManagerDao;
import com.model.Manager;
import com.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Resource
	ManagerDao managerDao;

	public Manager loginManager(Manager manager) {
		
		Manager man = managerDao.getManagerByname(manager.getMan_loginname());
		if (man != null && manager.getMan_range().equals(man.getMan_range()) && manager.getMan_pwd().equals(manager.getMan_pwd()) ) {
			return man;
		} else {
			return null;
		}
	}

	public void saveManager(Manager manager) {
		// TODO Auto-generated method stub

	}

	public void addManager() {
		// TODO Auto-generated method stub

	}

	public void UpdateManager(String name) {
		// TODO Auto-generated method stub

	}

	public Manager SearchManager(String name) {

		return null;
	}

}
