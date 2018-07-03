package com.dao;

import java.util.List;

import com.model.CosAreas;

public interface CosAreasDao {

	// 查询所有省份信息
	public List<CosAreas> getAreasByCities(String city_code);

}
