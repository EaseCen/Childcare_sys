package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.aaa.entity.User;

public interface UserMapper {

	public User CheckLoginAndPwd1(@Param("username") String name, @Param("password") String pwd);
	
	public User CheckLoginAndPwd0(@Param("username") String name, @Param("password") String pwd);
	
	public void addUser(User user);
	
	public void addAdmin(User user);

	public void delUser(int id);

	public void updUser(User user);

	public User findOne(int id);

	public List<User> findAll();
	
	public List<User> getUserByName(User user);

}
