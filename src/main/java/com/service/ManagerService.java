package com.service;

import com.model.Manager;

public interface ManagerService {
	// 用户登录函数，根据邮箱和密码判断登录是否成功（可采用MD5加密保证密码安全）
	public Manager loginManager(Manager manager);

	// 将一个管理员的信息保存到数据库中
	public void saveManager(Manager manager);

	// 实现管理员的添加功能（判断是否已经存在相同的管理员用户名）
	public void addManager();

	// 修改用户名为name的管理员的基本信息
	public void UpdateManager(String name);

	// 查询该name的管理员所有信息
	public Manager SearchManager(String name);

}
