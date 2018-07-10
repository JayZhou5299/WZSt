package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.CosOrder;
import com.model.User;
import com.serviceImpl.CosOrderServiceImpl;

@RequestMapping("/order")
@Controller
public class OrderAction {
	
	@Resource
	CosOrderServiceImpl cosOrderServiceImpl;
	
	@RequestMapping("listOrder.do")
	public ModelAndView listOrder(){
		List<CosOrder> list=cosOrderServiceImpl.getOrder();
		ModelAndView mav = new ModelAndView("orderManage");
		mav.addObject("Order", list);
		return mav;
	}
	
	@RequestMapping("dealOrder.do")
	@ResponseBody
	public String dealorder(HttpServletRequest request){
		int order_id = Integer.parseInt(request.getParameter("orderId"));
		cosOrderServiceImpl.updateorder(order_id);
//		ModelAndView mav = new ModelAndView("");
		return "处理成功";
	}
	

	@RequestMapping("add.do")
	public ModelAndView add(HttpSession session, double price, double cut) {
		System.out.println(price + "  " + cut);
		User user = (User) session.getAttribute("User");
		CosOrder cosOrder = new CosOrder();
		// 获取随机的单号
		StringBuilder str = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 8; i++) {
			str.append(random.nextInt(10));
		}
		int num = Integer.parseInt(str.toString());
		System.out.println(num);

		// 获取当前时间
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		
		
		cosOrder.setOrder_price(price);
		cosOrder.setOrder_cut(cut);
		cosOrder.setOrder_date(dateString);
		cosOrder.setOrder_deliv(num);
		cosOrder.setOrder_state(0);
		cosOrder.setUser_id(user.getUser_id());
		cosOrderServiceImpl.saveorder(cosOrder);
		ModelAndView mav = new ModelAndView("order_suc");
		mav.addObject("CosOrder",cosOrder);
		mav.addObject("balance", user.getUser_balance());
//		mav.addObject("address",);
		return mav;
	}

}
