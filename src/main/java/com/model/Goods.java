package com.model;

import java.sql.Date;

public class Goods {
	private int goods_id;
	private String goods_name;
	private int smal_class;
	private String goods_class;
	private String goods_pic;
	private int goods_price;
	private Date create_time;
	private Date modified_time;
	private String goods_unit;
	private int goods_hot = 0;
	private int goods_num;
	private String goods_detail;

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}


	public int getSmal_class() {
		return smal_class;
	}

	public void setSmal_class(int smal_class) {
		this.smal_class = smal_class;
	}

	public String getGoods_class() {
		return goods_class;
	}

	public void setGoods_class(String goods_class) {
		this.goods_class = goods_class;
	}

	public String getGoods_pic() {
		return goods_pic;
	}

	public void setGoods_pic(String goods_pic) {
		this.goods_pic = goods_pic;
	}

	
	

	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public Date getModified_time() {
		return modified_time;
	}

	public void setModified_time(Date modified_time) {
		this.modified_time = modified_time;
	}

	public String getGoods_unit() {
		return goods_unit;
	}

	public void setGoods_unit(String goods_unit) {
		this.goods_unit = goods_unit;
	}

	public int getGoods_hot() {
		return goods_hot;
	}

	public void setGoods_hot(int goods_hot) {
		this.goods_hot = goods_hot;
	}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	public int getGoods_num() {
		return goods_num;
	}

	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}

	public String getGoods_detail() {
		return goods_detail;
	}

	public void setGoods_detail(String goods_detail) {
		this.goods_detail = goods_detail;
	}

}
