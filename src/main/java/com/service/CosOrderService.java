package com.service;

import java.util.List;

import com.model.CosOrder;

public interface CosOrderService {
	// 根据用户ID查询该用户的所有订单信息（借助OrderItemservice实现）
	public List<CosOrder> listorderMessageByid(int userid);

	// 将根据起始时间和结束时间返回这段时期的所有订单的详细信息（借助OrderItemservice实现）
	public List<CosOrder> listorderBytime(String start, String end);

	// 将修改后的order对象保存到数据库中
	public void saveorder(CosOrder order);
	
	public void updateorder(int order_id);
	
	public List<CosOrder> getOrder();
}
