package com.dao;

import java.util.List;

import com.model.OrderItem;

public interface OrderItemDao {
	// 根据订单的id查询该订单实际购买的商品信息
	public List<OrderItem> getItemByorderid(int orderid);

	// 根据购物车付款信息添加订单购买商品信息
	public void saveCart(OrderItem orderitem);

}
