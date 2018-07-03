package com.service;

import java.util.List;

import com.model.CosAddress;

public interface CosAddressService {
	// 列出用户id对应的所有收货地址
	public List<CosAddress> ListAlladdress(int userid);

	// 将一个收货地址的信息保存到数据库中
	public void saveaddress(CosAddress cosaddress);

	// 删除id为addressid的收货地址
	public void deleteaddress(int addressid);

	// 添加收货地址
	public void AddAddress();

	// 修改id为addressid的收货地址
	public void Updateaddress(int addressid);

	public CosAddress Listdefaultaddress(int userid);

	
	
	
}
