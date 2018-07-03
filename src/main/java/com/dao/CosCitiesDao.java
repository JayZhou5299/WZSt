package com.dao;

import java.util.List;

import com.model.CosCities;

public interface CosCitiesDao {

	// 查询所有城市信息
	public List<CosCities> getCitiesByprovince(String province_code);

}
