package com.dao;

import java.util.List;

import com.model.Notes;;

public interface NotesDao {
	// 展示热门笔记：
	public List<Notes> ListNotes();

	// 将一个笔记信息保存到数据库中
	public void saveNotes(Notes notes);

	// 根据笔记的id删除该笔记
	public void deleteByNoteId(int id);

	// 根据输入信息名称查找笔记
	public List<Notes> SearchNotes(String name);

	// 全部笔记
	public List<Notes> listallnotes();

	public List<Notes> listnotesbyuserid(int user_id);
	
	
}
