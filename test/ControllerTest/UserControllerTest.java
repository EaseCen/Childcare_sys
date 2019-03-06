package ControllerTest;

import static org.junit.Assert.*;

import java.io.IOException;

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

import com.aaa.entity.User;
import com.aaa.mapper.UserMapper;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;

import Base.BaseControllerTest;


public class UserControllerTest extends BaseControllerTest {

	//ע��UserMapper,�����������
	@Autowired
	private UserMapper userMapper;
	
	String username;
	String password;
	String address;
	int state;
	User user;
	
	@Before
	public void setUp() throws Exception {
		username = "testname";
		password = "123";
		address = "12";
		state = 1;
		user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setAddress(address);
		user.setState(1);
	}
	
	//ע��
	@Test
	@Transactional
	public void LogoutTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.get("/user/LogOut"));
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
	
	//ע��
	@Test
	@Transactional
	public void RegisterLoginTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/user/register")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("username", username)
					.param("password", password)
					.param("address", address));
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
	
	//�û���ҳ
	@Test
	@Transactional
	public void queryUserTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/user/queryUser")
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
	
	//��ӹ���Ա
	@Test
	@Transactional
	public void addAdminTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/user/addAdmin")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("username", username)
					.param("password", password)
					.param("address", address)
					.param("state", String.valueOf(state)));
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
	
	//ɾ���û�
	@Test
	@Transactional
	public void delTest() {
		userMapper.addUser(user);
		String id = String.valueOf(user.getId());
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/user/delUser")
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
	
	//��ѯ������¼
	@Test
	@Transactional
	public void findOneTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/user/findOne")
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
	
	//�޸��û�
	@Test
	@Transactional
	public void updTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/user/updUser")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", "1")
					.param("username", username)
					.param("password", password)
					.param("address", address)
					.param("state", String.valueOf(state)));
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

	//�û���ģ����ѯ
	@Test
	@Transactional
	public void getUserByNameTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/user/getUserByName")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("pn", "1")
					.param("username", "ad"));
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
	
//	@Test
//	@Transactional
//	public void checkLoginTest() throws JsonGenerationException, JsonMappingException, IOException {
//		userMapper.addUser(user);
//		ObjectMapper mapper = new ObjectMapper();
//		ObjectWriter ow = mapper.writer().withDefaultPrettyPrinter();
//		String str = ow.writeValueAsString(user);
////		JSONObject json = JSONObject.fromObject(user);
////		String str = json.toString();
////		String str = "{'username':'admin','password':'admin'}";
//		System.out.println(str);
//		try {
//			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
//					.post("/user/checkLogin")
//					.accept(MediaType.parseMediaType("application/json;charset=utf-8"))
//					.contentType(MediaType.APPLICATION_JSON)
//					.content(str));
//			MvcResult mvcResult = resultActions
//					.andDo(MockMvcResultHandlers.print())
//					.andExpect(MockMvcResultMatchers.status().isOk())
//					.andReturn();
//			String result = mvcResult.getResponse().getContentAsString();
//			System.out.println("2333"+result);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
}
