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
		return cartDao.getcartByuserid(user_id);
	}

	public void deleteCart(int cart_id) {
		cartDao.deleteCartByid(cart_id);

	}

	public void UpdateCart(Cart cart) {	
		cartDao.updateCartByid(cart);
	}

	public void addCart() {
		// TODO Auto-generated method stub

	}

	public void deleteAll() {
		// TODO Auto-generated method stub

	}

	public void saveCart(Goods goods,int userid,int num,int price) {
		Cart cart = new Cart();
		cart.setGoods_id(goods.getGoods_id());
		cart.setGoods_image(goods.getGoods_pic());
		cart.setGoods_name(goods.getGoods_name());
		cart.setGoods_num(num);
		cart.setUser_id(userid);
		cart.setGoods_price(price);
		cartDao.saveCart(cart);
	}
	
	public void setCartNum(int cartId, int num){
		Cart cart = new Cart();
		cart.setCart_id(cartId);
		cart.setGoods_num(num);
		cartDao.updateCartByid(cart);
	}
}
