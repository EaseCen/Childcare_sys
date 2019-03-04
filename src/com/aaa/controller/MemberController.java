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
	
	// 分页查询数据
	@RequestMapping("/queryMember")
	public String queryMember(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 1.引入分页插件,pn是第几页，5是每页显示多少行
		PageHelper.startPage(pn, 5);
		// 2.紧跟的查询就是一个分页查询
		List<Member> list = memberBiz.findAll();
		// 3.使用PageInfo包装查询后的结果,5是连续显示的条数
		PageInfo<Member> pageInfo = new PageInfo<Member>(list, 5);
		// 4.使用model设置到前端
		model.addAttribute("pageInfo", pageInfo);
		// 5.最后设置返回的jsp
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
