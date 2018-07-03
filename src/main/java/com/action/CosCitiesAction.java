package com.action;
import com.model.CosCities;
import com.model.CosProvinces;

import com.serviceImpl.CosCitiesServiceImpl;


import java.util.ArrayList;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@RequestMapping("/coscities")
@Controller
public class CosCitiesAction {
	
	@Resource
	CosCitiesServiceImpl cosCitiesServiceImpl;
	
	@RequestMapping("list.do")
	public ModelAndView list(CosProvinces province){
		List<CosCities> list = new ArrayList<CosCities>();
		list = cosCitiesServiceImpl.ListCities(province.getProvince_code());
//		CosCities cosCities  = list.get(1);
//		System.out.println(cosCities.getCity_name());
		ModelAndView mav = new ModelAndView("跳轉的頁面");
		mav.addObject("list", list);
		return mav;
	}	
}