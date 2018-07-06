package com.action;


import java.io.UnsupportedEncodingException;
import java.util.List;

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
		System.out.print(manager.getMan_range());
//		System.out.println(manager.getMan_loginname()+"   "+manager.getMan_range()+"  "+manager.getMan_pwd()+" "+manager.getMan_name());
		Manager man = managerServiceImpl.loginManager(manager);
		ModelAndView mav = new ModelAndView();
		if(man == null){
			mav.setViewName("manager_login");
			return mav;
		}
		String type = manager.getMan_range();
		System.out.println(type);
		if(type.equals("总经理")){
//			System.out.println(man.getMan_loginname()+"   "+man.getMan_range()+"  "+man.getMan_pwd()+" "+man.getMan_name());
			List<Manager> goodsManager=managerServiceImpl.getManager("商品经理");
			List<Manager> notesManager=managerServiceImpl.getManager("笔记经理");
			mav.setViewName("manager1");
			session.setAttribute("manager",man);
			session.setAttribute("GoodsManager", goodsManager);
			session.setAttribute("NotesManager",notesManager);
		}
		else if(type.equals("商品经理")){
			mav.setViewName("manager2");
			session.setAttribute("manager",man);
		}
		else{
			mav.setViewName("笔记经理");
			session.setAttribute("manager",man);
		}
		return mav;
	}
	
	//管理员退出
	@RequestMapping("exit.do")
	public ModelAndView exit(HttpSession session){
		session.invalidate();
		ModelAndView mav = new ModelAndView("manager_login");
		return mav;
	}
	
	
	
	
	
	@RequestMapping("add.do")
	public ModelAndView add(Manager manager){
		managerServiceImpl.saveManager(manager);
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	
	
}