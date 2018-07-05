package com.dao;

import java.util.List;

import com.model.User;

public interface UserDao {

	// 根据邮箱地址查询密码
	public String getPasswordByemail(String email);

	// 将一个用户的信息保存到数据库中
	public void saveUser(User user);

	// 根据email地址来查找相应的用户（用于修改用户的基本信息）
	public User getUserByemail(String email);


	// 将一个用户的信息更新到数据库中
	public void updateUser(User user);

	// public List<User> listuser();
	
	public List<String> listallEmail();
	
	public User getUserById(int user_id);

	
}
