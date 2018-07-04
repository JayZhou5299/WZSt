package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.NotesDao;
import com.model.Notes;

import com.service.NotesService;

@Service
public class NotesServiceImpl implements NotesService {

	@Resource
	NotesDao notesDao;

	public void deleteNotes(int notes_id) {

	}

	public void saveNotes(Notes notes) {
		notesDao.saveNotes(notes);
	}

	public List<Notes> ListHotNotes() {
		
		return notesDao.ListNotes();
	}

	public List<Notes> SearchNotes(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public void addNotes() {
		// TODO Auto-generated method stub

	}

	public List<Notes> SearchNotesByUser(int user_id) {
		return notesDao.listnotesbyuserid(user_id);
	}

	public List<Notes> ListallNotes() {
		return notesDao.listallnotes();
	}

	public void addhot(int note_id) {
		// TODO Auto-generated method stub
		
	}

	
	
	

}
