package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aaa.biz.ParentingBiz;
import com.aaa.entity.Parenting;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/parenting")
public class ParentingController {
	@Autowired
	private ParentingBiz parentingBiz;

	/** �����û�����ģ����ѯ */
	@RequestMapping("/getParentingByAuthor")
	public String getParentingByName(@RequestParam(value = "pn", defaultValue = "1") Integer pn, String author,
			Model model) {
		// 1.�����ҳ���,pn�ǵڼ�ҳ��5��ÿҳ��ʾ������
		PageHelper.startPage(pn, 5);
		// 2.�����Ĳ�ѯ����һ����ҳ��ѯ
		List<Parenting> list = parentingBiz.getParentingByAuthor(author);
		// 3.ʹ��PageInfo��װ��ѯ��Ľ��,5��������ʾ������
		PageInfo<Parenting> pageInfo = new PageInfo<Parenting>(list, 5);
		// 4.ʹ��model���õ�ǰ��
		model.addAttribute("pageInfo", pageInfo);
		// 5.������÷��ص�jsp
		return "user/Parenting_record";
	}

	// ��ѯ������¼
	@RequestMapping("/findOne")
	public String findOne(Model model, int id) {
		Parenting parenting = parentingBiz.findOne(id);
		model.addAttribute("parenting", parenting);
		// �������µķ���
		return "user/updParenting";
	}

	@RequestMapping("/addParenting")
	public String addPosts(Parenting parenting) {
		// ���ӽ�ȥ
		parentingBiz.add(parenting);
		// �ڲ�ת��
		// System.out.println("=========================="+posts.getId()+"================================");//�������getId�Ϳ��Ի��
		return "redirect:getParentingByAuthor.action?author="+parenting.getAuthor();
	}

	@RequestMapping("/del")
	public String del(int id, Model model) {
		Parenting parenting = parentingBiz.findOne(id);
		parentingBiz.del(parenting.getId());
		return "redirect:getParentingByAuthor.action?author="+parenting.getAuthor();
	}

	// �޸�����
	@RequestMapping("/updParenting")
	public String upd(Parenting parenting) {
		// �޸�����Ժ���ø��·���
		parentingBiz.upd(parenting);
		System.out.println("=========================="+parenting.getAuthor()+"================================");
		return "redirect:getParentingByAuthor.action?author="+parenting.getAuthor();
	}

}