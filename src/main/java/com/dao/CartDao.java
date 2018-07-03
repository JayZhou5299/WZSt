package com.dao;

import java.util.List;

import com.model.Cart;

public interface CartDao {

	// 根据用户的id查询该用户所对应的所有购物车信息
	public List<Cart> getcartByuserid(int userid);

	// 将添加或修改的购物车信息保存到数据库中
	public void saveCart(Cart cart);

	// 根据购物信息id删除购物车信息
	public void deleteCartByid(int cartid);

}
