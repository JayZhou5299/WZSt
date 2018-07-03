package com.model;

public class Notes {
	private int note_id;
	private String note_name;
	private String note_pic;
	private String note_des;
	private int user_id;
	private int note_hot = 0;

	public String getNote_name() {
		return note_name;
	}

	public void setNote_name(String note_name) {
		this.note_name = note_name;
	}

	public String getNote_pic() {
		return note_pic;
	}

	public void setNote_pic(String note_pic) {
		this.note_pic = note_pic;
	}

	public String getNote_des() {
		return note_des;
	}

	public void setNote_des(String note_des) {
		this.note_des = note_des;
	}



	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}


	public int getNote_hot() {
		return note_hot;
	}

	public void setNote_hot(int note_hot) {
		this.note_hot = note_hot;
	}

	public int getNote_id() {
		return note_id;
	}

	public void setNote_id(int note_id) {
		this.note_id = note_id;
	}

}
