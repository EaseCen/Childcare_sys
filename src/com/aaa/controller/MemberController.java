package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aaa.biz.MemberBiz;
import com.aaa.entity.Member;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberBiz memberBiz;
	
	// ��ҳ��ѯ����
	@RequestMapping("/queryMember")
	public String queryMember(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 1.�����ҳ���,pn�ǵڼ�ҳ��5��ÿҳ��ʾ������
		PageHelper.startPage(pn, 5);
		// 2.�����Ĳ�ѯ����һ����ҳ��ѯ
		List<Member> list = memberBiz.findAll();
		// 3.ʹ��PageInfo��װ��ѯ��Ľ��,5��������ʾ������
		PageInfo<Member> pageInfo = new PageInfo<Member>(list, 5);
		// 4.ʹ��model���õ�ǰ��
		model.addAttribute("pageInfo", pageInfo);
		// 5.������÷��ص�jsp
		return "admin/showMember";
	}
	
	@RequestMapping("/addMember")
	public String add(Member member) {
		memberBiz.add(member);
		return "user/successApply";
	}
	
	@RequestMapping("/updPass")
	public String updPass(Member member) {
		memberBiz.updPass(member);
		return "redirect:queryMember.action";
	}
	
	@RequestMapping("/updReject")
	public String updReject(Member member) {
		memberBiz.updReject(member);
		return "redirect:queryMember.action";
	}
}
