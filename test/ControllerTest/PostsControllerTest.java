package ControllerTest;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.entity.Posts;
import com.aaa.mapper.PostsDaoMapper;

import Base.BaseControllerTest;

public class PostsControllerTest extends BaseControllerTest {

	//注入UserMapper,用于添加数据
	@Autowired
	private PostsDaoMapper postsMapper;
	
	String name;// 帖子标题
	String text;// 帖子正文
	Date time;// 发帖时间
	String author;// 帖子作者id
	Posts posts;
	SimpleDateFormat sdf;
	
	@Before
	public void setUp() throws Exception {
		name = "测试标题";
		text = "我是一条很长的正文";
		time = new Date();
		time.getTime();
		author = "admin";
		posts = new Posts();
		posts.setName(name);
		posts.setText(text);
		posts.setTime(time);
		posts.setAuthor(author);
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	}

	//分页查询
	@Test
	@Transactional
	public void queryPostsTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/posts/queryPosts")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("pn", "1"));
			MvcResult mvcResult = resultActions
					.andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().isOk())
					.andReturn();
			String result = mvcResult.getResponse().getContentAsString();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//新增
	@Test
	@Transactional
	public void addPostsTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/posts/addPosts")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("name", name)
					.param("text", text)
					.param("time", sdf.format(time))
					.param("author", author));
			MvcResult mvcResult = resultActions
					.andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is3xxRedirection())
					.andReturn();
			String result = mvcResult.getResponse().getContentAsString();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//删除
	@Test
	@Transactional
	public void delPostsTest() {
		postsMapper.add(posts);
		String id = String.valueOf(posts.getId());
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/posts/del")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", id));
			MvcResult mvcResult = resultActions
					.andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is3xxRedirection())
					.andReturn();
			String result = mvcResult.getResponse().getContentAsString();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//单个查询
	@Test
	@Transactional
	public void findOneTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/posts/findOne")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", "1"));
			MvcResult mvcResult = resultActions
					.andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().isOk())
					.andReturn();
			String result = mvcResult.getResponse().getContentAsString();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//修改
	@Test
	@Transactional
	public void updPostsTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/posts/updPosts")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", "1")
					.param("name", name)
					.param("text", text)
					.param("author", author));
			MvcResult mvcResult = resultActions
					.andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is3xxRedirection())
					.andReturn();
			String result = mvcResult.getResponse().getContentAsString();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//模糊查询
	@Test
	@Transactional
	public void getPostsByNameTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/posts/getPostsByName")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("pn", "1")
					.param("name", "1"));
			MvcResult mvcResult = resultActions
					.andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().isOk())
					.andReturn();
			String result = mvcResult.getResponse().getContentAsString();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
