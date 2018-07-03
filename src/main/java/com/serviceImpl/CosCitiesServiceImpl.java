package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CosCitiesDao;
import com.model.CosCities;
import com.service.CosCitiesService;

@Service
public class CosCitiesServiceImpl implements CosCitiesService {
	@Resource
	CosCitiesDao cosCitiesDao;

	public List<CosCities> ListCities(String province_code) {
		return cosCitiesDao.getCitiesByprovince(province_code);
	}

}
