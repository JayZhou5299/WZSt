package com.action;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.CosAddress;
import com.model.User;
import com.serviceImpl.CosAddressServiceImpl;

@RequestMapping("/cosaddress")
@Controller
public class CosAddressAction {

	@Resource
	CosAddressServiceImpl cosAddressServiceImpl;
	

	@RequestMapping("add.do")
	public ModelAndView list(CosAddress cosAddress,HttpSession session){
		System.out.println("lalalalalaala"+cosAddress.getRecv_addr()+" "+cosAddress.getRecv_area()+" "+cosAddress.getRecv_person());
		
		
		User user = (User) session.getAttribute("User");
		cosAddress.setUser_id(user.getUser_id());
		cosAddressServiceImpl.saveaddress(cosAddress);
		ModelAndView mav = new ModelAndView("checkout");
		return mav;
	}
	
}
