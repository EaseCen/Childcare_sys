package com.aaa.biz;

import java.util.List;

import com.aaa.entity.User;


public interface UserBiz {
	
	public User CheckLoginAndPwd0(String name, String pwd);
	
	public User CheckLoginAndPwd1(String name, String pwd);

	public void addUser(User user);
	
	public void addAdmin(User user);

	public void delUser(int id);
	
	public void updUser(User user);
	
	public User findOne(int id);
	
	public List<User> findAll();
	
	public List<User> getUserByName(User user);

}
