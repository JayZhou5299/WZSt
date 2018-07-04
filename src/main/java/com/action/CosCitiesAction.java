package com.action;
import com.model.CosCities;
import com.model.CosProvinces;

import com.serviceImpl.CosCitiesServiceImpl;
import com.serviceImpl.CosProvincesServiceImpl;

import net.sf.json.JSONArray;

import java.util.ArrayList;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@RequestMapping("/coscities")
@Controller
public class CosCitiesAction {
	
	@Resource
	CosCitiesServiceImpl cosCitiesServiceImpl;
	
	@Resource
	CosProvincesServiceImpl cosProvincesServiceImpl;
	

	
	@RequestMapping("/listc.do")
	@ResponseBody
	public String getCity(HttpSession session,CosProvinces province,HttpServletRequest request,ModelMap map){
		String provincename=request.getParameter("province");
		System.out.println("选择的省"+provincename);
		String code = cosProvincesServiceImpl.getCode(provincename);
		System.out.println("省的编号"+code);
		List<CosCities> list = new ArrayList<CosCities>();
		list = cosCitiesServiceImpl.ListCities(code);
		System.out.println("shi"+list.get(1).getCity_name());
		//mav.addObject("listc", list);
		//map.put("listc", list);
	//	session.setAttribute("listc", list);
		//return ResponseMessageEnum.SUCCESS.appendPageDataListToString(listc);
		JSONArray jsonArray = JSONArray.fromObject(list);
        System.out.println(jsonArray.toString());
		return jsonArray.toString();
	}	
}