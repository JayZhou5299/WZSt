package com.action;
import com.model.CosProvinces;
import com.serviceImpl.CosProvincesServiceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/cosprovinces")
@Controller
public class CosProvincesAction {
	
	@Resource
	CosProvincesServiceImpl cosprovincesserviceimpl;
	
	@RequestMapping("listp.do")
	public ModelAndView register(){
		List<CosProvinces> list = new ArrayList<CosProvinces>();
		list = cosprovincesserviceimpl.ListProvince();
		System.out.println("sheng"+list);
		ModelAndView mav = new ModelAndView("Order");
		mav.addObject("listp", list);
		return mav;
	}	
}