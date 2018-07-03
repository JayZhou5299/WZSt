package com.service;

import java.util.List;

import com.model.CosProvinces;

public interface CosProvincesService {
	// 查询所有省份信息，作为下拉列表
	public List<CosProvinces> ListProvince();

}
