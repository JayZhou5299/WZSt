package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CosAreasDao;

import com.model.CosAreas;

@Service
public class CosAreasServiceImpl implements CosAreasDao {

	@Resource
	CosAreasDao cosAreasDao;

	public List<CosAreas> getAreasByCities(String city_code) {
		return cosAreasDao.getAreasByCities(city_code);
	}

}
