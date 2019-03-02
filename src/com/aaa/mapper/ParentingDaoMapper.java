package com.aaa.mapper;

import java.util.List;

import com.aaa.entity.Parenting;



public interface ParentingDaoMapper {
	
	public List<Parenting> getParentingByAuthor(String author);
	
	public Parenting findOne(int id);
			
	public void add (Parenting parenting);
	
	public void upd(Parenting parenting);
	
	public void del(int id);
		
}
