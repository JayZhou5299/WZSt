package com.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.model.BigClass;
import com.service.BigClassService;

@Service
public class BigClassServiceImpl implements BigClassService {
	public void saveBigClass(BigClass bigclass) {
	}

	// 删除bigclass_id对应的一级类别
	public void deleteBigClass(int bigclass_id) {
	}

	// 修改bigclass_id对应的一级类别
	public BigClass UpdateBigClass(int bigclass_id) {
		return null;
	}

	// 列出所有的一级类别供用户选择
	public List<BigClass> ListBigclass() {
		return null;
	}

	// 添加新的一级类别
	public void addBigClass() {
	}
}
