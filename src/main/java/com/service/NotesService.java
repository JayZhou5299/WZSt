package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Update;

import com.model.Notes;

public interface NotesService {
	// 根据笔记的notes_id删除该笔记
	public void deleteNotes(int notes_id);

	// 将一个笔记信息保存到数据库中
	public void saveNotes(Notes notes);

	// 展示热门笔记：
	public List<Notes> ListHotNotes();

	// 根据输入信息名称查找相关笔记（支持模糊查询，用到like关键字）
	public List<Notes> SearchNotes(String name);

	// 发布笔记
	public void addNotes();

	// 显示所有该用户发过的笔记（查询历史笔记）
	public List<Notes> SearchNotesByUser(int user_id);

	//展示所有的笔记
	public List<Notes>  ListallNotes();
	
	public void addhot(int note_id);
	
}



