package com.action;
import com.model.CosProvinces;
import com.model.User;
import com.serviceImpl.CosProvincesServiceImpl;
import com.serviceImpl.UserServiceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/cosprovinces")
@Controller
public class CosProvincesAction {
	
	@Resource
	CosProvincesServiceImpl cosprovincesserviceimpl;
	
	@RequestMapping("list.do")
	public ModelAndView list(){
		List<CosProvinces> list = new ArrayList<CosProvinces>();
		list = cosprovincesserviceimpl.ListProvince();
//		CosProvinces cosProvinces = list.get(2);
//		System.out.println(cosProvinces.getProvince_name());
		ModelAndView mav = new ModelAndView("checkout");
		mav.addObject("list", list);
		return mav;
	}	
}