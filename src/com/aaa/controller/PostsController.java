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
import org.springframework.web.servlet.ModelAndView;

import com.aaa.biz.PostsBiz;
import com.aaa.entity.Posts;
import com.aaa.entity.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/posts")
public class PostsController {
	ModelAndView mav = new ModelAndView();

	@Autowired
	private PostsBiz postsBiz;

	// ��ҳ��ѯ����
	@RequestMapping("/queryPosts")
	public String queryPosts(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 1.�����ҳ���,pn�ǵڼ�ҳ��5��ÿҳ��ʾ������
		PageHelper.startPage(pn, 5);
		// 2.�����Ĳ�ѯ����һ����ҳ��ѯ
		List<Posts> list = postsBiz.findAll();
		// 3.ʹ��PageInfo��װ��ѯ��Ľ��,5��������ʾ������
		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
		// 4.ʹ��model���õ�ǰ��
		model.addAttribute("pageInfo", pageInfo);
		// 5.������÷��ص�jsp
		return "admin/showPosts";
	}

    @RequestMapping(value="index")
    public ModelAndView index(){
        List<Posts> posts =postsBiz.findAll();
        mav.setViewName("index");
        mav.addObject("posts",posts);
          return mav;
    }
	
	@RequestMapping("/addPosts")
	public String addPosts(Posts posts) {
		// ��ӽ�ȥ
		postsBiz.add(posts);
		// �ڲ�ת��
		//System.out.println("=========================="+posts.getId()+"================================");//�������getId�Ϳ��Ի��

		return "redirect:queryPosts.action";
	}

	@RequestMapping("/del")
	public String del(int id) {
		postsBiz.del(id);
		return "redirect:queryPosts.action";
	}

	// ��ѯ������¼
	@RequestMapping("/findOne")
	public String findOne(Model model, int id) {
		Posts posts = postsBiz.findOne(id);
		model.addAttribute("posts", posts);
		// �������µķ���
		return "admin/updPosts";
	}

	// �޸�����
	@RequestMapping("/updPosts")
	public String upd(Posts posts) {
		// �޸�����Ժ���ø��·���
		postsBiz.upd(posts);
		return "redirect:queryPosts.action";
	}
	
	/**�����û�����ģ����ѯ*/
	@RequestMapping("/getPostsByName")
	public String getPostsByName(@RequestParam(value = "pn", defaultValue = "1") Integer pn ,Posts posts ,Model model) {
		// 1.�����ҳ���,pn�ǵڼ�ҳ��5��ÿҳ��ʾ������
		PageHelper.startPage(pn, 5);
		// 2.�����Ĳ�ѯ����һ����ҳ��ѯ
		List<Posts> list = postsBiz.getPostsByName(posts);
		// 3.ʹ��PageInfo��װ��ѯ��Ľ��,5��������ʾ������
		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
		// 4.ʹ��model���õ�ǰ��
		model.addAttribute("pageInfo", pageInfo);
		// 5.������÷��ص�jsp
		return "admin/showPosts";
	}

	/**
     * ���ݳ�ʼ���󶨣�SpringMVC�У����ݴ�ǰ̨�����Ὣ�ַ���ת��Ϊ���ڶ���
     * @param binder
     */
     @InitBinder
     public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");//��ʽ���ݸ�����������趨
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   //true:���������ֵ�����ڿ���Ϊ�գ�false:����Ϊ��ֵ
    }
     
 	// ��ҳ��ѯ����
 	@RequestMapping("/findSameCity")
 	public String findSameCity(Posts posts ,Model model) {
 		// 2.�����Ĳ�ѯ����һ����ҳ��ѯ
 		List<Posts> list = postsBiz.findSameCity(posts);
 		// 3.ʹ��PageInfo��װ��ѯ��Ľ��,5��������ʾ������
 		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
 		// 4.ʹ��model���õ�ǰ��
 		model.addAttribute("pageInfo", pageInfo);
 		// 5.������÷��ص�jsp
 		return "user/showSameCityPosts";
 	}
 	
 	// ��ҳ��ѯ����
 	@RequestMapping("/findSameAge")
 	public String findSameAge(Posts posts ,Model model) {
 		// 2.�����Ĳ�ѯ����һ����ҳ��ѯ
 		List<Posts> list = postsBiz.findSameAge(posts);
 		// 3.ʹ��PageInfo��װ��ѯ��Ľ��,5��������ʾ������
 		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
 		// 4.ʹ��model���õ�ǰ��
 		model.addAttribute("pageInfo", pageInfo);
 		// 5.������÷��ص�jsp
 		return "user/findSameAgePosts";
 	}

	@RequestMapping("/showAllPost")
	public String showAllPost(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 1.�����ҳ���,pn�ǵڼ�ҳ��5��ÿҳ��ʾ������
		PageHelper.startPage(pn, 5);
		// 2.�����Ĳ�ѯ����һ����ҳ��ѯ
		List<Posts> list = postsBiz.findAll();
		// 3.ʹ��PageInfo��װ��ѯ��Ľ��,5��������ʾ������
		PageInfo<Posts> pageInfo = new PageInfo<Posts>(list, 5);
		// 4.ʹ��model���õ�ǰ��
		model.addAttribute("pageInfo", pageInfo);
		// 5.������÷��ص�jsp
		return "user/PostPreview";
	}
	
	@RequestMapping("/showIndex")
	public String showIndex(Model model) {
		postsBiz.findAll();
		return "user/PostPreview";
	}
	
	
}