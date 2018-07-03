package com.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.model.CosOrder;
import com.service.CosOrderService;

@Service
public class CosOrderServiceImpl implements CosOrderService {

	public List<CosOrder> listorderMessageByid(int userid) {
		return null;
	}

	public List<CosOrder> listorderBytime(String start, String end) {
		return null;
	}

	public void saveorder(CosOrder order) {
	}
}
