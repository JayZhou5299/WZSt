package com.action;
import com.model.CosAddress;
import com.model.Notes;
import com.model.User;
import com.serviceImpl.CosAddressServiceImpl;
import com.serviceImpl.NotesServiceImpl;
import com.serviceImpl.UserServiceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@RequestMapping("/user")
@Controller
public class UserAction {
	
	@Resource
	UserServiceImpl userServiceImpl;
	
	@Resource
	NotesServiceImpl notesServiceImpl;
	
	@Resource
	CosAddressServiceImpl cosAddressServiceImpl;
	
	
	//用户注册
	@RequestMapping("registe.do")
	public ModelAndView register(User user){
		System.out.println(user.getUser_name());
		userServiceImpl.saveUser(user);
		ModelAndView mav = new ModelAndView("checkout");
		return mav;
	}
	
	//用户登录
	@RequestMapping("login.do")
	public ModelAndView login(String email,String password,HttpSession session){
		Map<String,Object> data = new HashMap<String,Object>();
		ModelAndView mav = null; 
		User user = userServiceImpl.loginUser(email,password);
//		System.out.println(email+"  oooooooo"+email);
//		System.out.println(user);
		if(user!= null){
//			System.out.println(email+" ooooooo"+password);
			session.setAttribute("User", user);
//			System.out.println(user.getUser_id());
			mav = new ModelAndView("index",data);
			
		}
		else{
			mav = new ModelAndView("login");
		}
		
//		System.out.println(user.getUser_id());
		List<Notes> list = notesServiceImpl.SearchNotesByUser(user.getUser_id());

//		for(int i=0;i<list.size();i++){
//			System.out.println(list.get(i).getNote_des()+"  usermy");
//		}
//		System.out.println(list.toString());
	
//		session.setAttribute("userNotesList",list);
//		CosAddress defaultAdd = cosAddressServiceImpl.Listdefaultaddress(user.getUser_id());
//		System.out.println("我的地址："+defaultAdd.getRecv_province()+" "+defaultAdd.getRecv_city()+" "+defaultAdd.getRecv_area()+" "+defaultAdd.getRecv_addr()+" "+defaultAdd.getRecv_person()+"收 \n电话:"+defaultAdd.getRecv_tel());
//		session.setAttribute("Defaultaddress",defaultAdd.getRecv_province()+" "+defaultAdd.getRecv_city()+" "+defaultAdd.getRecv_area()+" "+defaultAdd.getRecv_addr()+" "+defaultAdd.getRecv_person()+"收 \n电话:"+defaultAdd.getRecv_tel());
		return mav;
	}
	
	
	
//	//用户查看个人信息
//	@RequestMapping("Mymessage.do")
//	public ModelAndView search(HttpServletRequest req,HttpServletResponse resp){
//		Map<String,Object> data = new HashMap<String,Object>();
//		ModelAndView mav = null;
//		String email = req.getParameter("name");
//		System.out.println(email+"  email");
//		User user = userServiceImpl.SearchUser(email);
//		data.put("myuser",user);
//		mav = new ModelAndView("userInfo",data);
//		return mav;
//	}
	
	//用户退出
	@RequestMapping("exit.do")
	public ModelAndView exit(HttpSession session){
		session.invalidate();
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	//用户更新自己的信息
	@RequestMapping("update.do")
	public ModelAndView update(HttpSession session,User user){
		Map<String,Object> data = new HashMap<String,Object>();
		//System.out.println(user.getUser_email()+"  "+user.getUser_pwd()+"   "+user.getUser_tel());
		userServiceImpl.UpdateUser(user);
		session.invalidate();
		ModelAndView mav = new ModelAndView("index"); 
		return mav;
	}

}