package com.action;
import com.model.CosAddress;
import com.model.Notes;
import com.model.User;
import com.serviceImpl.CartServiceImpl;
import com.serviceImpl.CosAddressServiceImpl;
import com.serviceImpl.NotesServiceImpl;
import com.serviceImpl.UserServiceImpl;
import com.util.GetMessage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@RequestMapping("/user")
@Controller
public class UserAction {
	
	@Resource
	UserServiceImpl userServiceImpl;
	
	@Resource
	NotesServiceImpl notesServiceImpl;
	
	@Resource
	CartServiceImpl cartServiceImpl;
	
	@Resource
	CosAddressServiceImpl cosAddressServiceImpl;
	
	
	@RequestMapping("zhifu.do")
	public ModelAndView zhifu(HttpServletRequest request,HttpSession session){
		int price = Integer.parseInt(request.getParameter("price"));
		User user = (User) session.getAttribute("User");
		user.setUser_integ(0);
		user.setUser_balance(user.getUser_balance()-price);
		ModelAndView mav = new ModelAndView("支付成功界面");
		return mav;
	}
	
	
	
	
	//用户注册
	@RequestMapping("registe.do")
	public ModelAndView register(User user){
		System.out.println(user.getUser_name());
		System.out.println(user.getUser_pwd()+"abcabc");
		userServiceImpl.saveUser(user);
		ModelAndView mav = new ModelAndView("checkout");
		return mav;
	}
	
	
	//用户注册时向手机发送验证码
	@RequestMapping("yanzhengma.do")
	@ResponseBody
	public String getRegister(HttpServletRequest request){
		String tel=request.getParameter("tel");
		System.out.println("tel:"+tel);
		GetMessage getMessage=new GetMessage();
		String registerCode="123456";//getMessage.getResult(tel);
		System.out.println("手机验证码为:"+registerCode);
		return registerCode;	
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
//			List<Cart> cartlist = cartServiceImpl.listcart(user.getUser_id());
//			System.out.println(cartlist);
//			session.setAttribute("cartlist", cartlist);
//			System.out.println(cartlist.get(1).getGoods_name()+"7.9");
			
			
			
		}
		else{
			mav = new ModelAndView("login");
		}
		
		
		
		
		
//		System.out.println(user.getUser_id());
//		List<Notes> list = notesServiceImpl.SearchNotesByUser(user.getUser_id());

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
	
	
	//用户退出
	@RequestMapping("ListEmail.do")
	public ModelAndView listEmail(){
		ModelAndView mav = new ModelAndView("register");
		List<String> list = userServiceImpl.listEmail();
//		System.out.println(list.get(1));
//		System.out.println(list.get(2));
//		System.out.println(list.get(3));
		mav.addObject("EmailList",list);
		return mav;
	}
	
	
	
	@RequestMapping("Mine.do")
	public ModelAndView listNotes(HttpSession session){
		User user = (User) session.getAttribute("User");
		int user_id = user.getUser_id();
		List<Notes> list =  notesServiceImpl.SearchNotesByUser(user_id);
		ModelAndView mav = new ModelAndView("userInfo");
		CosAddress defaultAdd = cosAddressServiceImpl.Listdefaultaddress(user.getUser_id());
		mav.addObject("Defaultaddress",defaultAdd.getRecv_province()+" "+defaultAdd.getRecv_city()+" "+defaultAdd.getRecv_area()+" "+defaultAdd.getRecv_addr()+" "+defaultAdd.getRecv_person()+"收 \n电话:"+defaultAdd.getRecv_tel());
		mav.addObject("NotesList",list);
//		System.out.println(list.get(0).getNote_name()+"7.10");
		return mav;
	}
	
	
	
	
	
	
	
	

}