package com.service;

import java.util.List;

import com.model.BigClass;

public interface BigClassService {
	public void saveBigClass(BigClass bigclass);

	// 删除bigclass_id对应的一级类别
	public void deleteBigClass(int bigclass_id);

	// 修改bigclass_id对应的一级类别
	public BigClass UpdateBigClass(int bigclass_id);

	// 列出所有的一级类别供用户选择
	public List<BigClass> ListBigclass();

	// 添加新的一级类别
	public void addBigClass();

}
