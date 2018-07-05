package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model.Notes;
import com.model.User;
import com.serviceImpl.NotesServiceImpl;
import java.io.File;
import java.io.IOException;

@RequestMapping("/notes")
@Controller
public class NotesAction {

	@Resource
	NotesServiceImpl notesServiceImpl;

	@RequestMapping("/shownewnotes.do")
	public ModelAndView newNotes(HttpSession session,HttpServletRequest request)throws IOException{
		
		String numChange=request.getParameter("page");
		int num=Integer.parseInt(numChange);
		//System.out.print(num);

		
		List<Notes> list=notesServiceImpl.ListallNotes();
		List<Notes> newList =null;
		ModelAndView mav = new ModelAndView();
		//System.out.print("列表长度："+list.size()+"   ");
		
		int end = 5*num;
		int start = end-5;
		//System.out.print(start+"  "+end);
		
		if(end <list.size()){
			newList=list.subList(start, end);
			//System.out.println(start+"  "+end);
		}else{
			int shang = list.size()/5;
			System.out.println(shang+"  shang");
			end = 5*((num-1)%shang+1);
			start = end-5;
			//System.out.println(start+"  "+end);
			newList = list.subList(start,end);
		}
		session.setAttribute("noteList",newList);
		mav.setViewName("newNotes");
		//System.out.println("ajaxhere");
		//System.out.println(newList);
		return mav;
	}
	
	@RequestMapping("/listnotes.do")
	public ModelAndView listNotes(HttpSession session) {
		ModelAndView mav = new ModelAndView(); 
		List<Notes> notes = notesServiceImpl.ListallNotes();
		System.out.println(notes.toString());
		List<Notes> list=notes.subList(0, 5);
		session.setAttribute("Notes", list);
		mav.setViewName("note");
		//System.out.println(notes);
		//System.out.println("indexhere");
		return mav;
	}
	
	
	// 展示热门笔记
	@RequestMapping("listhot.do")
	public ModelAndView listhot() {
		List<Notes> list = notesServiceImpl.ListHotNotes();
		ModelAndView mav = new ModelAndView("跳轉的頁面");
		// Notes notes= list.get(2);
		// System.out.println(notes.getNote_des()+" "+notes.getNote_pic());
		mav.addObject("hotnotes", list);
		return mav;
	}

	// 展示所有笔记
	@RequestMapping("listall.do")
	public ModelAndView listall() {
		List<Notes> list = notesServiceImpl.ListHotNotes();
		ModelAndView mav = new ModelAndView("跳轉的頁面");
		mav.addObject("allnotes", list);
		return mav;
	}

	// 添加笔记
	@RequestMapping("add.do")
	public ModelAndView add(HttpSession session,String note_name, String note_des, HttpServletRequest request, MultipartFile note_pic) {
		try {
			String realPath = request.getSession().getServletContext().getRealPath("/upload");
			User user = (User) session.getAttribute("User");
			String filename = System.currentTimeMillis()+user.getUser_id()+note_pic.getOriginalFilename();
			File dest = new File(realPath + "/" + filename);
			if (!dest.exists()) {
				dest.mkdirs();
			}
			System.out.println(realPath);
			System.out.println(filename);
			note_pic.transferTo(dest);
			Notes notes = new Notes();
			notes.setNote_des(note_des);
			notes.setNote_name(note_name);
			notes.setUser_id(user.getUser_id());
			notes.setNote_pic("/upload/"+filename);	
			notesServiceImpl.saveNotes(notes);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("note");
		return mav;
	}

	// 删除笔记
	@RequestMapping("delete.do")
	public ModelAndView delete() {
		int note_id = 3004;
		notesServiceImpl.deleteNotes(note_id);
		ModelAndView mav = new ModelAndView("需要跳转的页面");
		return mav;
	}
	
	
	
	@RequestMapping("listbyuserid.do")
	public ModelAndView listbyuserid(HttpSession session){
		User user = (User) session.getAttribute("User");
		notesServiceImpl.SearchNotesByUser(user.getUser_id());
		
		ModelAndView mav = new ModelAndView("userInfo");
		return mav;
	}
	
	
	@RequestMapping("addhot.do")
	public ModelAndView addhot(){
		int note_id = 3043;
		notesServiceImpl.addhot(note_id);
		ModelAndView mav = new ModelAndView("跳转的页面");
		return mav;
	}
	
}
