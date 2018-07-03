package com.dao;

import java.util.List;

import com.model.CosAddress;

public interface CosAddressDao {

	// 根据用户的id查询该用户的所有收货地址
	public List<CosAddress> getAddressByuserid(int userid);

	// 将一个收货地址的信息保存到数据库中
	public void saveCosAddress(CosAddress cosaddress);

	// 根据收货地址id来查找相应的收货地址信息（用于修改收货地址的基本信息）
	public CosAddress getaddressByid(int id);

	// 根据收货地址id来删除相应的收货地址信息
	public void deleteaddressByid(int id);

	public CosAddress getdefaultAddressByuserid(int userid);
	
}
