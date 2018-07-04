package com.action;
import com.model.CosAreas;
import com.model.CosCities;
import com.model.CosProvinces;
import com.serviceImpl.CosAreasServiceImpl;
import com.serviceImpl.CosCitiesServiceImpl;

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


@RequestMapping("/cosAreas")
@Controller
public class CosAreasAction {
	
	@Resource
	CosAreasServiceImpl cosAreasServiceImpl;
	
	@Resource
	CosCitiesServiceImpl cosCityServiceImpl;
	@RequestMapping("lista.do")
	
	@ResponseBody
	public String getArea(HttpSession session,CosCities city,HttpServletRequest request,ModelMap map){
		String cityname=request.getParameter("city");

//		System.out.println("选择的市"+cityname);
		String code = cosCityServiceImpl.getCode(cityname);
//		System.out.println("市的编号"+code);
		List<CosAreas> list = new ArrayList<CosAreas>();
		list = cosAreasServiceImpl.ListAreas(code);
		//mav.addObject("listc", list);
		//map.put("listc", list);
	//	session.setAttribute("listc", list);
		//return ResponseMessageEnum.SUCCESS.appendPageDataListToString(listc);
		
		JSONArray jsonArray = JSONArray.fromObject(list);
        System.out.println(jsonArray.toString());
		
		return jsonArray.toString();
	}	
	
}