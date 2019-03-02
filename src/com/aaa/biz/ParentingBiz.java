package com.aaa.biz;

import java.util.List;

import com.aaa.entity.Parenting;

public interface ParentingBiz {
	
	public List<Parenting> getParentingByAuthor(String author);

	public Parenting findOne(int id);

	public void add(Parenting parenting);

	public void upd(Parenting parenting);

	public void del(int id);
	
}
