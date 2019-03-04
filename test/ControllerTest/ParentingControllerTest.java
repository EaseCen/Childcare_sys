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

import com.aaa.entity.Parenting;
import com.aaa.mapper.ParentingDaoMapper;

import Base.BaseControllerTest;

public class ParentingControllerTest extends BaseControllerTest {

	//ע��ParentingDaoMapper
	@Autowired
	private ParentingDaoMapper parentingMapper;
	
	String text;// ��������
	Date time;// ����ʱ��
	String author;// ��������id
	Parenting parenting;
	SimpleDateFormat sdf;
	
	@Before
	public void setUp() throws Exception {
		text = "����һ���ܳ�������";
		time = new Date();
		time.getTime();
		author = "��������";
		parenting = new Parenting();
		parenting.setText(text);
		parenting.setTime(time);
		parenting.setAuthor(author);
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	}

	//����
	@Test
	@Transactional
	public void addPostsTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/parenting/addParenting")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
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

	//�޸�
	@Test
	@Transactional
	public void updTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/parenting/updParenting")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", "7")
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
	
	//ɾ��
	@Test
	@Transactional
	public void delTest() {
		parentingMapper.add(parenting);
		String id = String.valueOf(parenting.getId());
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/parenting/del")
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
	
	//������ѯ
	@Test
	@Transactional
	public void findOneTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/parenting/findOne")
					.contentType(MediaType.APPLICATION_FORM_URLENCODED)
					.param("id", "7"));
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
	
	//��ҳ��ѯ
	@Test
	@Transactional
	public void getParentingByNameTest() {
		try {
			ResultActions resultActions = mockMvc.perform(MockMvcRequestBuilders
					.post("/parenting/getParentingByAuthor")
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
}
