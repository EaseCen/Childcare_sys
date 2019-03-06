package ControllerTest;

import static org.junit.Assert.*;

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

import com.aaa.entity.Member;
import com.aaa.mapper.MemberDaoMapper;

import Base.BaseControllerTest;

public class MemberControllerTest extends BaseControllerTest {

	//ע��MemberDaoMapper
	@Autowired
	private MemberDaoMapper memberMapper;
		
	String username;// ������
	String reason;// ����ԭ��
	Member member;
	
	@Before
	public void setUp() throws Exception {
		username = "�����˺�";
		reason = "������ÿ��ְ�";
		member = new Member();
		member.setUsername(username);
		member.setReason(reason);
	}

	//��ҳ��ѯ
	@Test
	@Transactional
	public void queryPostsTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/member/queryMember")
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
	
	//����
	@Test
	@Transactional
	public void addTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/member/addMember")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("username", username)
					.param("reason", reason));
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

	//�޸�ͨ��
	@Test
	@Transactional
	public void updPassTest() {
		memberMapper.add(member);
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/member/updPass")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("username", username)
					.param("id", String.valueOf(member.getId())));
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
	
	//�޸�ͨ��
	@Test
	@Transactional
	public void updRejectTest() {
		memberMapper.add(member);
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/member/updReject")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", String.valueOf(member.getId())));
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
