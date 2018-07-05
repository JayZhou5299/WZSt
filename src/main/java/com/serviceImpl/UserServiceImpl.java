package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.model.User;
import com.service.UserService;
import com.util.MD5Util;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	UserDao userDao;

	public User loginUser(String email, String password) {
		User user = userDao.getUserByemail(email);
		// System.out.println(user.getUser_email()+" "+user.getUser_pwd()+"
		// "+password);
		String afpassword = (MD5Util.digest(password));
		// System.out.println(afpassword+" aj");
		// System.out.println(user.getUser_pwd()+" aj");
		if (user != null && user.getUser_pwd().equals(afpassword)) {
			// System.out.println("12312");
			return user;
		} else {
			return null;
		}
	}

	public void saveUser(User user) {
		user.setUser_pwd((MD5Util.digest(user.getUser_pwd())));
		userDao.saveUser(user);
	}

	public void addUser() {

	}

	public void UpdateUser(User user) {
		String afpassword = (MD5Util.digest(user.getUser_pwd()));
		user.setUser_pwd(afpassword);
		// System.out.println(user.getUser_email()+" "+user.getUser_pwd()+"
		// "+user.getUser_tel());
		userDao.updateUser(user);
	}

	public User SearchUser(String email) {
		System.out.println(email);
		User user = userDao.getUserByemail(email);
		System.out.println(user.getUser_name() + "  " + user.getUser_sex());
		return user;
	}

	public boolean UserIsExist(String email) {
		String pwd = userDao.getPasswordByemail(email);
		if (pwd == null) {
			return false;
		} else {
			return true;
		}
	}

	public List<String> listEmail() {
		return userDao.listallEmail();
	}
	
	
}
