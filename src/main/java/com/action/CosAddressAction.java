package com.action;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonAnyFormatVisitor;
import com.model.CosAddress;
import com.model.User;
import com.serviceImpl.CosAddressServiceImpl;

import net.sf.json.JSONArray;

@RequestMapping("/cosaddress")
@Controller
public class CosAddressAction {

	@Resource
	CosAddressServiceImpl cosAddressServiceImpl;
	

	@RequestMapping("add.do")
	@ResponseBody
	public ModelAndView addAddress(CosAddress cosAddress,HttpSession session,HttpServletRequest request){
		System.out.println("12345667808013");
		User user = (User) session.getAttribute("User");
		int userid = user.getUser_id();
//		System.out.println("lalalalalaala"+cosAddress.getRecv_addr()+" "+cosAddress.getRecv_area()+" "+cosAddress.getRecv_person());
		ModelAndView mav  = new ModelAndView();
		cosAddress.setUser_id(userid);
		cosAddressServiceImpl.saveaddress(cosAddress);
		System.out.println(cosAddress.getRecv_person());
//		mav.addObject("CosAddress",cosAddress);
		session.setAttribute("CosAddress", cosAddress);
		mav.setViewName("address");
		return mav;
	}
	
	@RequestMapping("default.do")
	@ResponseBody
	public String defaultAddress(CosAddress cosAddress,HttpSession session,HttpServletRequest request){
		User user = (User) session.getAttribute("User");
		int userid = user.getUser_id();
		System.out.println("lalalalalaala"+cosAddress.getRecv_addr()+" "+cosAddress.getRecv_area()+" "+cosAddress.getRecv_person());
		return null;
	}
	
}
