package com.model;

import java.sql.Date;

public class CosOrder {
	private int user_id;
	private int order_price;
	private int order_cut;
	private int order_deliv;
	private int order_state;
	private Date order_date;

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	public int getOrder_cut() {
		return order_cut;
	}

	public void setOrder_cut(int order_cut) {
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

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

}
