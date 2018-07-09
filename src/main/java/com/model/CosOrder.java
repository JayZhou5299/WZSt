package com.model;

import java.sql.Date;

public class CosOrder {
	private int order_id;
	private int user_id;
	private double order_price;
	private double order_cut;
	private int order_deliv;
	private int order_state;
	private String order_date;

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	
	
	
	
	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public double getOrder_price() {
		return order_price;
	}

	public void setOrder_price(double order_price) {
		this.order_price = order_price;
	}

	public double getOrder_cut() {
		return order_cut;
	}

	public void setOrder_cut(double order_cut) {
		this.order_cut = order_cut;
	}

	public int getOrder_deliv() {
		return order_deliv;
	}

	public void setOrder_deliv(int order_deliv) {
		this.order_deliv = order_deliv;
	}

	public int getOrder_state() {
		return order_state;
	}

	public void setOrder_state(int order_state) {
		this.order_state = order_state;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

}
