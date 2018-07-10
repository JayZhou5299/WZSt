package com.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDao;
import com.model.Cart;
import com.model.CosAddress;
import com.model.CosProvinces;
import com.model.Goods;
import com.model.User;
import com.serviceImpl.CartServiceImpl;
import com.serviceImpl.CosAddressServiceImpl;
import com.serviceImpl.CosProvincesServiceImpl;
import com.serviceImpl.UserServiceImpl;
import com.sun.net.httpserver.HttpsConfigurator;

import net.sf.json.JSONArray;

@RequestMapping("/cart")
@Controller
public class CartAction {

	@Resource
	CartServiceImpl cartServiceImpl;
	
	@Resource
	UserServiceImpl userServiceImpl;
	
	@Resource
	CosAddressServiceImpl cosAddressServiceImpl;
	
	@Resource
	CosProvincesServiceImpl cosProvincesServiceImpl;
	
	@RequestMapping("add.do")
	public ModelAndView add(Goods goods,HttpSession session){
		System.out.println("12312321");
		System.out.println(goods.getGoods_name()+goods.getGoods_id()+"I am Jay"+goods.getGoods_price());
		User user = (User) session.getAttribute("User");
		ModelAndView mav = new ModelAndView("products");
		List<Cart> listcart = cartServiceImpl.listcart(user.getUser_id());
		for(Cart cart: listcart){
			if(cart.getGoods_id()==goods.getGoods_id()){
				cart.setGoods_num(cart.getGoods_num()+1);
				cartServiceImpl.UpdateCart(cart);
				return mav;
			}
		}
		int num = 1;
		int sum =goods.getGoods_price();
		cartServiceImpl.saveCart(goods,user.getUser_id(),num,sum);
		System.out.println(user.getUser_id()+num+sum);
		return mav;
	}
	
	@RequestMapping("update.do")
	public ModelAndView update(Cart cartlist){
//		for(Cart cart:cartlist){
//			System.out.println("ID:"+cart.getCart_id()+"   Num:"+cart.getGoods_num());
//		}
//		System.out.println(cart_id);
//		cartServiceImpl.deleteCart(cart_id);
		
		ModelAndView mav = new ModelAndView("跳转的页面");
		return mav;
	}
	
	
	@RequestMapping("delete.do")
	@ResponseBody
	public String delete(HttpServletRequest request){
		String cart_id=request.getParameter("cartId");
		int id=Integer.parseInt(cart_id);
		cartServiceImpl.deleteCart(id);
		Map<String, String> map = new HashMap<String, String>();
		map.put("success", "删除成功返回值");
		JSONArray jsonArray = JSONArray.fromObject(map);
//		System.out.println(jsonArray.toString());
		return jsonArray.toString();
	}
	
	
	@RequestMapping("listUserCart.do")
	public ModelAndView listUserCart(HttpSession session){
		User user = (User) session.getAttribute("User");
//		System.out.println(user.getUser_id());
		List<Cart> list = cartServiceImpl.listcart(user.getUser_id());
		ModelAndView mav = new ModelAndView("cart");
//		System.out.println(list.get(0).getGoods_name());
		mav.addObject("cartlist",list);
		return mav;
	}
	
	
	
	@RequestMapping("end.do")
	public ModelAndView end(double sum,HttpSession session){
		User user = (User)session.getAttribute("User");
		System.out.println(sum+"    "+user.getUser_id());
		int integ = user.getUser_integ();
		CosAddress cosAddress = cosAddressServiceImpl.Listdefaultaddress(user.getUser_id());
		List<CosProvinces> list=cosProvincesServiceImpl.ListProvince();
		
		ModelAndView mav = new ModelAndView("Order");
		mav.addObject("sum",sum);
		mav.addObject("Integ",integ/100);
		mav.addObject("CosAddress",cosAddress.getRecv_province()+" "+cosAddress.getRecv_city()+" "+cosAddress.getRecv_area()+" "+cosAddress.getRecv_addr()+" "+cosAddress.getRecv_person()+"收  "+cosAddress.getRecv_tel());
		mav.addObject("listp",list);
		
		return mav;
	}
	
	@RequestMapping("changeNum.do")
	@ResponseBody
	public String changeNum(HttpServletRequest request){
		int num=Integer.parseInt(request.getParameter("inputNum"));
		int cartId=Integer.parseInt(request.getParameter("cartId"));
		System.out.println("数量"+num+"    id"+cartId);
		cartServiceImpl.setCartNum(cartId, num);
		return "success";
	}
	
}
