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

import com.aaa.biz.PostsBiz;
import com.aaa.entity.Parenting;
import com.aaa.entity.Posts;
import com.aaa.entity.Reposts;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/posts")
public class PostsController {
	@Autowired
	private PostsBiz postsBiz;

	// 分页查询数据
	@RequestMapping("/queryPosts")
	public String queryPosts(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 1.引入分页插件,pn是第几页，5是每页显示多少行
		PageHelper.startPage(pn, 5);
		// 2.紧跟的查询就是一个分页查询
		List<Posts> list = postsBiz.findAll();
		// 3.使用PageInfo包装查询后的结果,5是连续显示的条数
		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
		// 4.使用model设置到前端
		model.addAttribute("pageInfo", pageInfo);
		// 5.最后设置返回的jsp
		return "admin/showPosts";
	}
	
	@RequestMapping("/addPosts")
	public String addPosts(Posts posts) {
		// 添加进去
		postsBiz.add(posts);
		// 内部转发
		//System.out.println("=========================="+posts.getId()+"================================");//调用这个getId就可以获得

		return "user/showPosts";
	}

	@RequestMapping("/del")
	public String del(int id) {
		postsBiz.del(id);
		return "redirect:queryPosts.action";
	}

	// 查询单条记录
	@RequestMapping("/findOne")
	public String findOne(Model model, int id) {
		Posts posts = postsBiz.findOne(id);		
		model.addAttribute("posts", posts);
		// 返给更新的方法
		return "admin/updPosts";
	}

	// 修改数据
	@RequestMapping("/updPosts")
	public String upd(Posts posts) {
		// 修改完成以后调用更新方法
		postsBiz.upd(posts);
		return "redirect:queryPosts.action";
	}
	
	/**根据用户数据模糊查询*/
	@RequestMapping("/getPostsByName")
	public String getPostsByName(@RequestParam(value = "pn", defaultValue = "1") Integer pn ,Posts posts ,Model model) {
		// 1.引入分页插件,pn是第几页，5是每页显示多少行
		PageHelper.startPage(pn, 5);
		// 2.紧跟的查询就是一个分页查询
		List<Posts> list = postsBiz.getPostsByName(posts);
		// 3.使用PageInfo包装查询后的结果,5是连续显示的条数
		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
		// 4.使用model设置到前端
		model.addAttribute("pageInfo", pageInfo);
		// 5.最后设置返回的jsp
		return "user/selectPosts";
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
     
 	// 分页查询数据
 	@RequestMapping("/findSameCity")
 	public String findSameCity(Posts posts ,Model model) {
 		// 2.紧跟的查询就是一个分页查询
 		List<Posts> list = postsBiz.findSameCity(posts);
 		// 3.使用PageInfo包装查询后的结果,5是连续显示的条数
 		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
 		// 4.使用model设置到前端
 		model.addAttribute("pageInfo", pageInfo);
 		// 5.最后设置返回的jsp
 		return "user/showSameCityPosts";
 	}
 	
 	// 分页查询数据
 	@RequestMapping("/findSameAge")
 	public String findSameAge(Posts posts ,Model model) {
 		// 2.紧跟的查询就是一个分页查询
 		List<Posts> list = postsBiz.findSameAge(posts);
 		// 3.使用PageInfo包装查询后的结果,5是连续显示的条数
 		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
 		// 4.使用model设置到前端
 		model.addAttribute("pageInfo", pageInfo);
 		// 5.最后设置返回的jsp
 		return "user/findSameAgePosts";
 	}

	@RequestMapping("/showAllPost")
	public String showAllPost(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 1.引入分页插件,pn是第几页，5是每页显示多少行
		PageHelper.startPage(pn, 5);
		// 2.紧跟的查询就是一个分页查询
		List<Posts> list = postsBiz.findAll();
		// 3.使用PageInfo包装查询后的结果,5是连续显示的条数
		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
		// 4.使用model设置到前端
		model.addAttribute("pageInfo", pageInfo);
		// 5.最后设置返回的jsp
		return "user/PostPreview";
	}
	
	@RequestMapping("/findSameCityAndAge")
	public String findSameCityAndAge(Model model,Posts posts) {
 		List<Posts> list1 = postsBiz.findSameCity(posts);
 		List<Posts> list2 = postsBiz.findSameAge(posts);

		PageInfo<Posts> pageInfo1 = new PageInfo<Posts>(list1, 5);		
		PageInfo<Posts> pageInfo2 = new PageInfo<Posts>(list2, 5);
		
		model.addAttribute("pageInfo1", pageInfo1);
		model.addAttribute("pageInfo2", pageInfo2);
		
		return "user/PostPreview";
	}
	
	@RequestMapping("/showIndex")
	public String showIndex(Model model) {
		List<Posts> list = postsBiz.findAll();
		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "user/showIndex";
	}
	
	@RequestMapping("/getPostsById")
	public String getPostsById(Model model, int id) {
		Posts posts = postsBiz.findOne(id);	
		List<Posts> posts1 = postsBiz.selectReposts(id);
		
		model.addAttribute("posts", posts);
		model.addAttribute("posts1", posts1);

		return "user/showPosts";
	}
	
	@RequestMapping("/addReposts")
	public String addReposts(Posts posts){
		postsBiz.addReposts(posts);
		System.out.println("=========================="+posts+"================================");//调用这个getId就可以获得
		return "redirect:getPostsById.action?id="+posts.getRepost_id();
	}
	
	@RequestMapping("/toAddPosts")
	public String addPosts(){
		return "user/addPosts";
	}
	
	@RequestMapping("/returnIndex")
	public String returnIndex(){
		return "Index";
	}
	
	
}