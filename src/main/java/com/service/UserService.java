package com.service;


import java.util.List;

import com.model.User;

public interface UserService {
	// 用户登录函数，根据邮箱和密码判断登录是否成功（可采用MD5加密保证密码安全）
	public User loginUser(String email, String password);

	// 将用户的信息保存到数据库中
	public void saveUser(User user);

	// 实现用户的注册功能（判断是否已经存在相同的用户名）
	public void addUser();

	// 修改邮箱为email的用户的基本信息
	public void UpdateUser(User user);

	// 查询该email的用户所有信息
	public User SearchUser(String email);

	// 根据email地址来判断是否存在该邮箱的用户，避免重名
	public boolean UserIsExist(String email);

	// // 根据email地址来判断是否存在该邮箱的用户，避免重名
	 public List<String> listEmail();

}
