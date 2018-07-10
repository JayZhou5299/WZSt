package com.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.Goods;
import com.model.Notes;
import com.serviceImpl.GoodsServiceImpl;
import com.serviceImpl.NotesServiceImpl;
import com.sun.xml.internal.ws.Closeable;

import net.sf.json.JSONArray;

@RequestMapping("/goods")
@Controller
public class GoodsAction {

	@Resource
	GoodsServiceImpl goodsServiceImpl;

	@Resource
	NotesServiceImpl notesServiceImpl;
	
	@RequestMapping("Search.do")
	public ModelAndView search(HttpServletRequest request){
		String content = request.getParameter("content");
		ModelAndView mav = new ModelAndView("products");
//		List<Notes> noteslist = notesServiceImpl.SearchNotes(content);
		List<Goods> goodslist = goodsServiceImpl.SearchGoods(content);
//		System.out.println(noteslist.get(0).getNote_name()+"abcd");
		System.out.println(goodslist.get(0).getGoods_name()+"abcde");
		mav.addObject("products",goodslist);
//		mav.addObject("notesList",noteslist);
		return mav;
	}
	
	@RequestMapping("delete.do")
	@ResponseBody
	public String delete(HttpServletRequest request) {
		String getId = request.getParameter("goodsId");
		int id = Integer.parseInt(getId);
		goodsServiceImpl.deleteGoods(id);
		System.out.println("获取的id" + id);
		Map<String, String> map = new HashMap<String, String>();
		map.put("success", "删除成功返回值");
		JSONArray jsonArray = JSONArray.fromObject(map);
		System.out.println(jsonArray.toString());

		return jsonArray.toString();
	}
	
	@RequestMapping("update.do")
	@ResponseBody
	public String Update(Goods goods){
		int goods_id = goods.getGoods_id();
		if(goods_id>0){
			Date currentTime = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			String modified_time = formatter.format(currentTime);
			goods.setModified_time(modified_time);
			goodsServiceImpl.updateGoods(goods);
		}
		else{
			
			goodsServiceImpl.saveGoods(goods);
		}
		
		
//		System.out.println("2018");
//		System.out.println(goods.getGoods_detail()+" "+goods.getGoods_name()+"start"+"  "+goods.getGoods_num());
		
//		ModelAndView mav = new ModelAndView("manager3");
		return "success";
	}
	
	
	@RequestMapping("add.do")
	public ModelAndView add(Goods goods){
		System.out.println("2018");
		System.out.println(goods.getGoods_detail()+" "+goods.getGoods_name()+"start"+"  "+goods.getGoods_num());
		goodsServiceImpl.updateGoods(goods);
		ModelAndView mav = new ModelAndView("goodsForm");
		return mav;
	}
	
	

	@RequestMapping("tanchuForm.do")
	public ModelAndView goodsForm(HttpServletRequest request, HttpSession session) {
		String getId = request.getParameter("goods_id");
		Goods goods = null;
		if(getId!=null){
			int id = Integer.parseInt(getId);
			goods = goodsServiceImpl.getGoodsById(id);
			System.out.println(goods);	
		}
		else{
			 goods = new Goods();
		}
		ModelAndView mav = new ModelAndView("goodsForm");
//		System.out.println(id);
		mav.addObject("oneGoods", goods);
		return mav;
	}
	
	
	

	@RequestMapping("/listSome.do")
	public ModelAndView listSome(HttpSession session, HttpServletRequest request) {
		String className = request.getParameter("name");
		List<Goods> list = goodsServiceImpl.SearchGoods(className);
		ModelAndView mav = new ModelAndView();
		session.setAttribute("proList", list);
		mav.setViewName("newProducts");
		return mav;
	}

	@RequestMapping("/shownewproducts.do")
	public ModelAndView newproducts(HttpSession session, HttpServletRequest request) throws IOException {

		// 获取从前端ajax中的data传来的值，记录按键的点击次数
		String numChange = request.getParameter("page");
		int num = Integer.parseInt(numChange);
		// System.out.print(num);

		List<Goods> list = goodsServiceImpl.ListallGoods();
		List<Goods> newList = goodsServiceImpl.ListallGoods();
		ModelAndView mav = new ModelAndView();

		int end = 9 * num;
		int start = end - 9;
		// System.out.print(start+" "+end);

		if (end < list.size()) {
			newList = list.subList(start, end);
			// System.out.println(start+" "+end);
		} else {
			int shang = list.size() / 9;
			// System.out.println(shang+" shang");
			end = 9 * ((num - 1) % shang + 1);
			start = end - 9;
			// System.out.println(start+" "+end);
			newList = list.subList(start, end);
		}
		session.setAttribute("proList", newList);
		mav.setViewName("newProducts");
		return mav;
	}

	@RequestMapping("/listproducts.do")
	public ModelAndView listNotes(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Goods> goods = goodsServiceImpl.ListallGoods();
		List<Goods> goodsList = goods.subList(0, 9);
		session.setAttribute("products", goodsList);
		mav.setViewName("products");
		// System.out.println(notes);
		return mav;
	}

	@RequestMapping("/SearchgoodsByclass.do")
	public ModelAndView SearchgoodsByclass() {
		System.out.println("enter");
		List<Goods> list = goodsServiceImpl.SearchGoodsByclass(9014);
		ModelAndView mav = new ModelAndView("跳转的页面");
		mav.addObject("SearchgoodsList", list);
		System.out.println(list);
		return mav;
	}

	@RequestMapping("listGoods.do")
	public ModelAndView list(HttpSession session) {
		List<Goods> list = goodsServiceImpl.ListallGoods();
		List<Goods> newList = list.subList(0, 3);
		ModelAndView mav = new ModelAndView("goodsManage");
		// System.out.println(goods.getGoods_name()+"
		// "+goods.getGoods_pic()+goods.getGoods_name());
		session.setAttribute("goodsList", newList);
		return mav;
	}

	@RequestMapping("/showNextGoods.do")
	public ModelAndView showNextGoods(HttpSession session, HttpServletRequest request) throws IOException {

		// 获取从前端ajax中的data传来的值，记录按键的点击次数
		String numChange = request.getParameter("page");
		int num = Integer.parseInt(numChange);
		// System.out.print(num);

		List<Goods> list = goodsServiceImpl.ListallGoods();
		List<Goods> newList = goodsServiceImpl.ListallGoods();
		ModelAndView mav = new ModelAndView();

		int end = 3 * num;
		int start = end - 3;
		// System.out.print(start+" "+end);

		if (end < list.size()) {
			newList = list.subList(start, end);
			// System.out.println(start+" "+end);
		} else {
			int shang = list.size() / 3;
			// System.out.println(shang+" shang");
			end = 3 * ((num - 1) % shang + 1);
			start = end - 3;
			// System.out.println(start+" "+end);
			newList = list.subList(start, end);
		}
		session.setAttribute("goodsList", newList);
		mav.setViewName("goodsManage");
		return mav;
	}

}
