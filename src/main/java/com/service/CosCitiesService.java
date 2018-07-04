package com.service;

import java.util.List;

import com.model.CosCities;

public interface CosCitiesService {
	// 根据省份信息查询该省的城市信息，用于下拉列表的实现
	public List<CosCities> ListCities(String province_code);

	public String getCode(String name);
}
