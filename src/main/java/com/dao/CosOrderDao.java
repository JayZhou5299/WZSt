package com.dao;

import java.util.List;

import org.junit.validator.PublicClassValidator;

import com.model.CosOrder;

public interface CosOrderDao {
	// 根据用户邮箱查询该用户的所有订单信息
	public List<CosOrder> getorderByid(int userid);

	// 将根据起始时间和结束时间返回这段时期的所有订单信息
	public List<CosOrder> getorderBytime(String start, String end);

	// 将修改后的order对象保存到数据库中
	public void saveorder(CosOrder order);

	// 将修改后的order对象保存到数据库中
	public void updateorder(int order_id);
	
	public List<CosOrder> ListcosOrder();

}
