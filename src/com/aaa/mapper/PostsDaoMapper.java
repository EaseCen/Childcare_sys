package com.aaa.mapper;

import java.util.List;

import com.aaa.entity.Posts;


public interface PostsDaoMapper {
	
	public Posts findOne(int id);
	
	public List<Posts> selectReposts(int id);
	
	public void add (Posts posts);
	
	public void addReposts (Posts posts);
	
	public void upd(Posts posts);
	
	public void del(int id);
	
	public List<Posts> getPostsByName(Posts posts);
	
	public List<Posts> findSameCity(Posts posts);
	
	public List<Posts> findSameAge(Posts posts);

	public List<Posts> findAll();
	

}
