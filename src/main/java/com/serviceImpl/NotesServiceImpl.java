package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.NotesDao;
import com.dao.UserDao;
import com.model.Manager;
import com.model.Notes;
import com.model.User;
import com.service.NotesService;

@Service
public class NotesServiceImpl implements NotesService {

	@Resource
	NotesDao notesDao;
	
	@Resource
	UserDao userDao;

	public void deleteNotes(int note_id) {
		notesDao.deleteByNoteId(note_id);
	}

	public void saveNotes(Notes notes) {
		notesDao.saveNotes(notes);
	}

	public List<Notes> ListHotNotes() {
		
		return notesDao.ListNotes();
	}

	public Notes SearchNotesById(int note_id) {
		
		return notesDao.SearchNotesById(note_id);
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
		System.out.println(note_id);
		Notes notes = notesDao.SearchNotesById(note_id);
		notes.setNote_hot(notes.getNote_hot()+1);
		notesDao.updateNotes(notes);
		int userid = notesDao.SearchUserIdByNoteID(note_id);
		User user = userDao.getUserById(userid);
		user.setUser_integ(user.getUser_integ()+1);
		userDao.updateUser(user);
	}

}
