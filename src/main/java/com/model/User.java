package com.model;

public class User {
	private int user_id;
	private String user_name;
	private String user_pwd;
	private int user_integ = 0;
	private int user_balance = 0;
	private String user_email;
	private String user_tel;
	private String user_sex;

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public int getUser_integ() {
		return user_integ;
	}

	public void setUser_integ(int user_integ) {
		this.user_integ = user_integ;
	}

	public int getUser_balance() {
		return user_balance;
	}

	public void setUser_balance(int user_balance) {
		this.user_balance = user_balance;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

}
