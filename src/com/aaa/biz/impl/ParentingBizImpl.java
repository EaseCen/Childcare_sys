package com.aaa.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.biz.ParentingBiz;
import com.aaa.entity.Parenting;
import com.aaa.mapper.ParentingDaoMapper;

@Service
public class ParentingBizImpl implements ParentingBiz{

	@Autowired
	private ParentingDaoMapper parentingDaoMapper;
	
	@Override
	public List<Parenting> getParentingByAuthor(String author) {
		// TODO Auto-generated method stub
		return parentingDaoMapper.getParentingByAuthor(author);
	}

	@Override
	public Parenting findOne(int id) {
		// TODO Auto-generated method stub
		return parentingDaoMapper.findOne(id);
	}

	@Override
	public void add(Parenting parenting) {
		// TODO Auto-generated method stub
		parentingDaoMapper.add(parenting);
	}

	@Override
	public void upd(Parenting parenting) {
		// TODO Auto-generated method stub
		parentingDaoMapper.upd(parenting);
	}

	@Override
	public void del(int id) {
		// TODO Auto-generated method stub
		parentingDaoMapper.del(id);
	}

}
