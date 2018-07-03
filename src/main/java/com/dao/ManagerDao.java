package com.dao;

import com.model.Manager;

public interface ManagerDao {

	// 根据管理员用户名查询密码
	public String getPasswordByname(String loginname);

	// 将一个管理员的信息保存到数据库中
	public void saveManager(Manager manager);

	// 根据管理员账户名来查找相应的管理员（用于修改管理员的基本信息）
	public Manager getManagerByname(String loginname);

	// 根据管理员的账户名删除某个管理员
	public void deleteManagerByname(String loginname);

}
