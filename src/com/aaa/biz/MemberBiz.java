package com.aaa.biz;

import java.util.List;

import com.aaa.entity.Member;

public interface MemberBiz {
	
	public List<Member> findAll();
	
	public Member findOne(int id);
	
	public void add(Member member);
	
	public void updUserState(Member member);
	
	public void updPass(Member member);
	
	public void updReject(Member member);


}
