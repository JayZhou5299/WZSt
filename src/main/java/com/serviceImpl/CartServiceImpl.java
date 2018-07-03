package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CartDao;
import com.model.Cart;
import com.model.Goods;
import com.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	@Resource
	CartDao cartDao;

	public List<Cart> listcart(int user_id) {

		return null;
	}

	public void deleteCart(int cart_id) {
		// TODO Auto-generated method stub

	}

	public String UpdateCart(int cart_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void addCart() {
		// TODO Auto-generated method stub

	}

	public void deleteAll() {
		// TODO Auto-generated method stub

	}

	public void saveCart(Goods goods, int userid, int num, int price) {
		Cart cart = new Cart();
		cart.setGoods_id(goods.getGoods_id());
		cart.setGoods_image(goods.getGoods_pic());
		cart.setGoods_name(goods.getGoods_name());
		cart.setGoods_num(num);
		cart.setUser_id(userid);
		cart.setGoods_price(price);
		cartDao.saveCart(cart);

	}

}
