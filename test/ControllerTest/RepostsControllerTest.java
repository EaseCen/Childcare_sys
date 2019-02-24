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

import com.aaa.entity.Reposts;
import com.aaa.mapper.RepostsDaoMapper;

import Base.BaseControllerTest;

public class RepostsControllerTest extends BaseControllerTest {

	//注入RepostsDaoMapper,用于添加数据
	@Autowired
	RepostsDaoMapper repostsMapper;
	
	private Integer repost_id;// 回复帖子的id
	private String text;// 回复内容
	private String repost_user;// 回复者
	private Date time;// 回复时间
	private String name;
	Reposts reposts;
	SimpleDateFormat sdf;
	
	@Before
	public void setUp() throws Exception {
		repost_id = 1;
		text = "这是一条很长的回复内容";
		repost_user = "test";
		time = new Date();
		time.getTime();
		name = "标题1";
		reposts = new Reposts();
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		reposts.setRepost_id(repost_id);
		reposts.setText(text);
		reposts.setRepost_user(repost_user);
		reposts.setTime(time);
		reposts.setName(name);
	}

	//分页查询
	@Test
	@Transactional
	public void queryRepostsTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/reposts/queryReposts")
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
	public void addRepostsTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/reposts/addReposts")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", String.valueOf(repost_id))
					.param("text", text));
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
	public void delRepostsTest() {
		repostsMapper.add(reposts);
		String id = String.valueOf(reposts.getId());
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/reposts/del")
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
					.post("/reposts/findOne")
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
	public void updRepostsTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/reposts/updReposts")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", "1")
					.param("text", text));
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
}
