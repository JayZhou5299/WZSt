package com.serviceImpl;

import java.util.List;

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
//		System.out.println(man.getMan_loginname()+"   "+man.getMan_range()+"  "+man.getMan_pwd()+" "+man.getMan_name());
//		System.out.println(manager.getMan_loginname()+"   "+manager.getMan_range()+"  "+manager.getMan_pwd()+" "+manager.getMan_name());
		if (man != null && manager.getMan_range().equals(man.getMan_range()) && manager.getMan_pwd().equals(manager.getMan_pwd()) ) {
//			System.out.println("OKle");
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

	public List<Manager> getManager(String range) {
		// TODO Auto-generated method stub
		return managerDao.getManagerByRange(range);
	}

}
