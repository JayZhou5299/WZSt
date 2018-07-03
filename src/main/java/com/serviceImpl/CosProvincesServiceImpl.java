package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CosProvincesDao;
import com.model.CosProvinces;

import com.service.CosProvincesService;

@Service
public class CosProvincesServiceImpl implements CosProvincesService {

	@Resource
	CosProvincesDao cosProvincesDao;

	public List<CosProvinces> ListProvince() {
		return cosProvincesDao.getAllProvince();
	}

}
