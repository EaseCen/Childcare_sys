package com.aaa.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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

	@RequestMapping("/getParentingByAuthor")
	public String getParentingByName(@RequestParam(value = "pn", defaultValue = "1") Integer pn, String author,
			Model model) {
		// 1.引入分页插件,pn是第几页，5是每页显示多少行
		PageHelper.startPage(pn, 5);
		// 2.紧跟的查询就是一个分页查询
		List<Parenting> list = parentingBiz.getParentingByAuthor(author);
		// 3.使用PageInfo包装查询后的结果,5是连续显示的条数
		PageInfo<Parenting> pageInfo = new PageInfo<Parenting>(list, 5);
		// 4.使用model设置到前端
		model.addAttribute("pageInfo", pageInfo);
		// 5.最后设置返回的jsp
		return "user/Parenting_record";
	}

	// 查询单条记录
	@RequestMapping("/findOne")
	public String findOne(Model model, int id) {
		Parenting parenting = parentingBiz.findOne(id);
		model.addAttribute("parenting", parenting);
		// 返给更新的方法
		return "user/updParenting";
	}

	@RequestMapping("/addParenting")
	public String addParenting(Parenting parenting) {
		// 添加进去
		parentingBiz.add(parenting);
		// 内部转发
		// System.out.println("=========================="+posts.getId()+"================================");//调用这个getId就可以获得
		return "redirect:getParentingByAuthor.action?author="+parenting.getAuthor();
	}

	@RequestMapping("/del")
	public String del(int id, Model model) {
		Parenting parenting = parentingBiz.findOne(id);
		parentingBiz.del(parenting.getId());
		return "redirect:getParentingByAuthor.action?author="+parenting.getAuthor();
	}

	// 修改数据
	@RequestMapping("/updParenting")
	public String upd(Parenting parenting) {
		// 修改完成以后调用更新方法
		parentingBiz.upd(parenting);
		System.out.println("=========================="+parenting.getAuthor()+"================================");
		return "redirect:getParentingByAuthor.action?author="+parenting.getAuthor();
	}
	
	/**
     * 数据初始化绑定：SpringMVC中，数据从前台过来会将字符串转换为日期对象
     * @param binder
     */
     @InitBinder
     public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//格式根据个人需求进行设定
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   //true:允许输入空值，日期可以为空，false:不能为空值
    }

}