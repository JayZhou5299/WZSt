package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CosAddressDao;
import com.model.CosAddress;
import com.service.CosAddressService;

@Service
public class CosAddressServiceImpl implements CosAddressService {

	@Resource
	CosAddressDao cosAddressDao;

	public List<CosAddress> ListAlladdress(int userid) {
		// TODO Auto-generated method stub
		return null;
	}

	public void saveaddress(CosAddress cosaddress) {
		cosAddressDao.saveCosAddress(cosaddress);
	}

	public void deleteaddress(int addressid) {
		// TODO Auto-generated method stub
		
	}

	public void AddAddress() {
		// TODO Auto-generated method stub
		
	}

	public void Updateaddress(int addressid) {
		// TODO Auto-generated method stub
		
	}

	public CosAddress Listdefaultaddress(int userid) {
		System.out.println(userid+" ID:  ");
		CosAddress cosAddress = cosAddressDao.getdefaultAddressByuserid(userid);
		System.out.println(cosAddress.getRecv_city());
		return cosAddress;
	}
}
