package com.service;

import java.util.List;

import com.model.OrderItem;

public interface OrderItemService {
	public List<OrderItem> getItemByorderid(int orderid);

	// 根据购物车付款信息添加订单购买商品信息
	public void saveCart(OrderItem orderitem);

}
