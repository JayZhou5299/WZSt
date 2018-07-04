package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CosAreasDao;

import com.model.CosAreas;
import com.service.CosAreasService;

@Service
public class CosAreasServiceImpl implements CosAreasService {

	@Resource
	CosAreasDao cosAreasDao;

	public List<CosAreas> ListAreas(String city_code) {
		return cosAreasDao.getAreasByCities(city_code);
	}

	public String getCode(String name) {
		return cosAreasDao.getCode(name);
	}

}
