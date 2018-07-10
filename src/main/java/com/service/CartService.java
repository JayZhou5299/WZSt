package com.service;

import java.util.List;

import com.model.Cart;
import com.model.Goods;
import com.model.User;

public interface CartService {
	// 列出用户的userid对应的购物车信息记录
	public List<Cart> listcart(int user_id);

	// 将添加或修改的购物车信息保存到数据库中
	public void saveCart(Goods goods, int userid, int num, int price);

	// 删除id为cart_id的购物车信息
	public void deleteCart(int cart_id);

	// 更新购物车信息
	public void UpdateCart(Cart cart);

	// 添加购物车信息
	public void addCart();

	// 清空购物车
	public void deleteAll();
	
	public void setCartNum(int cartId,int num);

}
