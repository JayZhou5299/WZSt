package com.action;
import com.model.CosAreas;
import com.model.CosCities;
import com.model.CosProvinces;
import com.serviceImpl.CosAreasServiceImpl;
import com.serviceImpl.CosCitiesServiceImpl;


import java.util.ArrayList;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@RequestMapping("/cosAreas")
@Controller
public class CosAreasAction {
	
	@Resource
	CosAreasServiceImpl cosAreasServiceImpl;
	
	@RequestMapping("list.do")
	public ModelAndView list(CosCities cosCities){
		List<CosAreas> list = new ArrayList<CosAreas>();
		list = cosAreasServiceImpl.getAreasByCities(cosCities.getCity_code());
//		CosAreas cosAreas = list.get(2);
//		System.out.println(cosAreas.getArea_name());
		ModelAndView mav = new ModelAndView("跳轉的頁面");
		mav.addObject("list", list);
		return mav;
	}	
}