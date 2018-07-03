package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.BigClass;
import com.serviceImpl.BigClassServiceImpl;

@RequestMapping("/bigclass")
@Controller
public class BigClassAction {

	@Resource
	BigClassServiceImpl bigclassserviceImpl;

	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session){
		List<BigClass> list = bigclassserviceImpl.ListBigclass();
		
		ModelAndView mav = new ModelAndView("checkout");
		return mav;
	}
	
}
