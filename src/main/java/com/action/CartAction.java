package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Cart;
import com.model.Goods;
import com.model.User;
import com.serviceImpl.CartServiceImpl;

@RequestMapping("/cart")
@Controller
public class CartAction {

	@Resource
	CartServiceImpl cartServiceImpl;
	
	@RequestMapping("add.do")
	public ModelAndView add(Goods goods,HttpSession session){
		System.out.println("12312321");
		System.out.println(goods.getGoods_name()+goods.getGoods_id()+"I am Jay"+goods.getGoods_price());
		User user = (User) session.getAttribute("User");
		int num =1;
		int sum =goods.getGoods_price();
		cartServiceImpl.saveCart(goods,user.getUser_id(),num,sum);
		System.out.println(user.getUser_id()+num+sum);
		ModelAndView mav = new ModelAndView("跳转的页面");
		return mav;
	}
	
	
	
	@RequestMapping("listUserCart.do")
	public ModelAndView listUserCart(HttpSession session){
		User user = (User) session.getAttribute("User");
		System.out.println(user.getUser_id());
		List<Cart> list = cartServiceImpl.listcart(user.getUser_id());
		ModelAndView mav = new ModelAndView("cart");
		System.out.println(list.get(0).getGoods_name());
		mav.addObject("cartlist",list);
		return mav;
	}
	
	
	
}
