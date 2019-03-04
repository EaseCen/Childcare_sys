package com.aaa.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.biz.UserBiz;
import com.aaa.entity.User;
import com.aaa.mapper.UserMapper;

@Service
public class UserBizImpl implements UserBiz {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User CheckLoginAndPwd0(String name, String pwd) {
		// TODO Auto-generated method stub
		return userMapper.CheckLoginAndPwd0(name, pwd);
	}
	
	@Override
	public User CheckLoginAndPwd1(String name, String pwd) {
		// TODO Auto-generated method stub
		return userMapper.CheckLoginAndPwd1(name, pwd);
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.addUser(user);
	}
	
	@Override
	public void addAdmin(User user) {
		// TODO Auto-generated method stub
		userMapper.addAdmin(user);
	}

	@Override
	public void delUser(int id) {
		// TODO Auto-generated method stub
		userMapper.delUser(id);
	}

	@Override
	public void updUser(User user) {
		// TODO Auto-generated method stub
		userMapper.updUser(user);
	}

	@Override
	public User findOne(int id) {
		// TODO Auto-generated method stub
		return userMapper.findOne(id);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userMapper.findAll();
	}
	
	@Override
	public List<User> getUserByName(User user) {
		// TODO Auto-generated method stub
		return userMapper.getUserByName(user);
	}

}
