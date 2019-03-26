package com.aaa.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.biz.MemberBiz;
import com.aaa.entity.Member;
import com.aaa.mapper.MemberDaoMapper;

@Service
public class MemberBizImpl  implements MemberBiz {
	
	@Autowired
	private MemberDaoMapper memberDaoMapper;

	@Override
	public List<Member> findAll() {
		// TODO Auto-generated method stub
		return memberDaoMapper.findAll();
	}

	@Override
	public Member findOne(int id) {
		// TODO Auto-generated method stub
		return memberDaoMapper.findOne(id);
	}

	@Override
	public void add(Member member) {
		// TODO Auto-generated method stub
		memberDaoMapper.add(member);
	}

	@Override
	public void updUserState(Member member) {
		// TODO Auto-generated method stub
		memberDaoMapper.updUserState(member);
	}
	
	@Override
	public void updPass(Member member) {
		// TODO Auto-generated method stub
		memberDaoMapper.updPass(member);
	}

	@Override
	public void updReject(Member member) {
		// TODO Auto-generated method stub
		memberDaoMapper.updReject(member);
	}


}
