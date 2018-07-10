package com.model;

public class CosAddress {
	private int user_id;
	private String recv_person;
	private String recv_tel;
	private String recv_province;
	private String recv_city;
	private String recv_area;
	private String recv_addr;
	private int is_default = 0;
	
	@Override
	public String toString() {
		return recv_province+"省  "+recv_city+"市  "+recv_area+"区  "+recv_addr+"\n"+recv_person+"收  "+"电话 ："+recv_tel;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getRecv_person() {
		return recv_person;
	}

	public void setRecv_person(String recv_person) {
		this.recv_person = recv_person;
	}

	public String getRecv_tel() {
		return recv_tel;
	}

	public void setRecv_tel(String recv_tel) {
		this.recv_tel = recv_tel;
	}

	public String getRecv_province() {
		return recv_province;
	}

	public void setRecv_province(String recv_province) {
		this.recv_province = recv_province;
	}

	public String getRecv_city() {
		return recv_city;
	}

	public void setRecv_city(String recv_city) {
		this.recv_city = recv_city;
	}

	public String getRecv_area() {
		return recv_area;
	}

	public void setRecv_area(String recv_area) {
		this.recv_area = recv_area;
	}

	public String getRecv_addr() {
		return recv_addr;
	}

	public void setRecv_addr(String recv_addr) {
		this.recv_addr = recv_addr;
	}

	public int getIs_default() {
		return is_default;
	}

	public void setIs_default(int is_default) {
		this.is_default = is_default;
	}



}
