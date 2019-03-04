package ServiceTest;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.biz.ParentingBiz;
import com.aaa.entity.Parenting;
import com.aaa.mapper.ParentingDaoMapper;

import Base.BaseTest;
import junit.framework.Assert;

public class ParentingServiceTest extends BaseTest {

	//ע��ParentingDaoService
	@Autowired
	private ParentingBiz parentingBiz;
	
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

	@Test
	@Transactional
	public void addTest() {
		parentingBiz.add(parenting);
		System.out.println(parenting.toString());
		Parenting findParenting = new Parenting();
		findParenting = parentingBiz.findOne(parenting.getId());
		Assert.assertEquals(text, findParenting.getText());
		Assert.assertEquals(sdf.format(time), sdf.format(findParenting.getTime()));
		Assert.assertEquals(author, findParenting.getAuthor());
	}

	@Test
	@Transactional
	public void updtest() {
		parentingBiz.add(parenting);
		System.out.println(parenting.toString());
		text = "����һ���ܳ�������2";
		parenting.setText(text);
		parentingBiz.upd(parenting);
		System.out.println(parenting.toString());
		Parenting findParenting = new Parenting();
		findParenting = parentingBiz.findOne(parenting.getId());
		Assert.assertEquals(text, findParenting.getText());
	}
	
	@Test
	@Transactional
	public void deltest() {
		parentingBiz.add(parenting);
		System.out.println(parenting.toString());
		parentingBiz.del(parenting.getId());
		Parenting findparenting = new Parenting();
		findparenting = parentingBiz.findOne(parenting.getId());
		Assert.assertEquals(null, findparenting);
	}
	
	@Test
	@Transactional
	public void getPostsByNameTest() {
		parentingBiz.add(parenting);
		System.out.println(parenting.toString());
		List<Parenting> Parentings = parentingBiz.getParentingByAuthor(author);
		System.out.println(Parentings);
	}
}
