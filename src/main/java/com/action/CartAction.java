package com.action;

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
	public ModelAndView add(Goods goods,HttpSession session,int sum,int num){
		Cart cart = new Cart();
		User user = (User) session.getAttribute("User");
		cartServiceImpl.saveCart(goods,user.getUser_id(),num,sum);
		ModelAndView mav = new ModelAndView("checkout");
		return mav;
	}
	
}
