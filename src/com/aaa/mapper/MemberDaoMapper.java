package com.aaa.mapper;

import java.util.List;

import com.aaa.entity.Member;

public interface MemberDaoMapper {
	public List<Member> findAll();
	
	public Member findOne(int id);
	
	public void add(Member member);
	
	public void updPass(Member member);
	
	public void updReject(Member member);
}
