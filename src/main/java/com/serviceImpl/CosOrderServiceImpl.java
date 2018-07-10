package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CosOrderDao;
import com.model.CosOrder;
import com.service.CosOrderService;

@Service
public class CosOrderServiceImpl implements CosOrderService {

	@Resource
	CosOrderDao cosOrderDao;
	
	public List<CosOrder> listorderMessageByid(int userid) {
		return null;
	}

	public List<CosOrder> listorderBytime(String start, String end) {
		return null;
	}

	public void saveorder(CosOrder order) {
		cosOrderDao.saveorder(order);
	}

	public List<CosOrder> getOrder() {
		return cosOrderDao.ListcosOrder();
	}

	public void updateorder(int order_id) {
		cosOrderDao.updateorder(order_id);
	}
}
