package com.action;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Manager;
import com.serviceImpl.ManagerServiceImpl;

@RequestMapping("/manager")
@Controller
public class ManagerAction {
	
	@Resource
	ManagerServiceImpl managerServiceImpl;
	
	@RequestMapping("login.do")
	public ModelAndView login(HttpSession session,Manager manager) {
		System.out.println(manager.getMan_loginname()+"   "+manager.getMan_range()+"  "+manager.getMan_pwd());
		Manager man = managerServiceImpl.loginManager(manager);
		
		ModelAndView mav = new ModelAndView();
		if(man == null){
			mav.setViewName("manager_login");
			return mav;
		}
		String type = manager.getMan_range();
		System.out.println(type);
		if(type.equals("1")){
			mav.setViewName("manager1");
			session.setAttribute("manager",man);
		}
		else if(type.equals("2")){
			mav.setViewName("manager2");
			session.setAttribute("manager",man);
		}
		else{
			mav.setViewName("manager3");
			session.setAttribute("manager",man);
		}
		return mav;
	}
	
	@RequestMapping("exit.do")
	public ModelAndView exit(HttpSession session){
		session.invalidate();
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	@RequestMapping("add.do")
	public ModelAndView add(Manager manager){
		managerServiceImpl.saveManager(manager);
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	
	
}