package com.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Goods;
import com.serviceImpl.GoodsServiceImpl;

@RequestMapping("/goods")
@Controller
public class GoodsAction {
	
	@Resource	
	GoodsServiceImpl goodsServiceImpl;
	
	@RequestMapping("/shownewproducts.do")
	public ModelAndView newproducts(HttpSession session,HttpServletRequest request) throws IOException{
		
	   //获取从前端ajax中的data传来的值，记录按键的点击次数
		String numChange=request.getParameter("page");
		int num=Integer.parseInt(numChange);
		//System.out.print(num);	
		
		List<Goods> list = goodsServiceImpl.ListallGoods();
		List<Goods> newList = goodsServiceImpl.ListallGoods();
		ModelAndView mav = new ModelAndView();
		
		int end = 9*num;
		int start = end-9;
		//System.out.print(start+"  "+end);
		
		if(end <list.size()){
			newList=list.subList(start, end);
			//System.out.println(start+"  "+end);
		}else{
			int shang = list.size()/9;
			//System.out.println(shang+"  shang");
			end = 9*((num-1)%shang+1);
			start = end-9;
			//System.out.println(start+"  "+end);
			newList = list.subList(start,end);
		}
		session.setAttribute("proList",newList);
		mav.setViewName("newProducts");
		return mav;
	}
	
	@RequestMapping("/listproducts.do")
	public ModelAndView listNotes(HttpSession session) {
		ModelAndView mav = new ModelAndView(); 
		List<Goods> goods=goodsServiceImpl.ListallGoods();
		List<Goods> goodsList=goods.subList(0, 9);
		
		session.setAttribute("products", goodsList);
		mav.setViewName("products");
		//System.out.println(notes);
		return mav;
	}
	
}
