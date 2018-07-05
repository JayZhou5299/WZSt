package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.BigClass;
import com.model.SmallClass;
import com.serviceImpl.BigClassServiceImpl;
import com.serviceImpl.SmallClassServiceImpl;

@RequestMapping("/smallclass")
@Controller
public class SmallClassAction {

	@Resource
	SmallClassServiceImpl smallClassServiceImpl;

	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session,int bigclass_id){
		
		List<SmallClass> list = smallClassServiceImpl.listsmallclassByBclass(bigclass_id);
		
		session.setAttribute("smallclassList",list);
		ModelAndView mav = new ModelAndView("跳转的页面");
		return mav;
	}
	
}
