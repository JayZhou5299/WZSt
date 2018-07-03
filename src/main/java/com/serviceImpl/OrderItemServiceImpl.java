package com.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.model.OrderItem;
import com.service.OrderItemService;

@Service
public class OrderItemServiceImpl implements OrderItemService {
	public List<OrderItem> getItemByorderid(int orderid) {
		return null;
	}

	public void saveCart(OrderItem orderitem) {
	}
}
