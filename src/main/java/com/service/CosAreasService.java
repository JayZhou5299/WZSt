package com.service;

import java.util.List;

import com.model.CosAreas;

public interface CosAreasService {
	// 根据省市的信息查询所有区的信息
	public List<CosAreas> ListAreas(String city_code);

}
