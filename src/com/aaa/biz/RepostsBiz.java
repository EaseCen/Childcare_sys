package com.aaa.biz;

import java.util.List;

import com.aaa.entity.Reposts;


public interface RepostsBiz {
	
	public Reposts findOne(int id);
		
		
	public void add(Reposts reposts);
	
	public void upd(Reposts reposts);
	
	public void del(int id);

	public List<Reposts> findAll();
		

}
