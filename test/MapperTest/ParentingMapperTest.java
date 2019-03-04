package MapperTest;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.entity.Parenting;
import com.aaa.entity.Posts;
import com.aaa.mapper.ParentingDaoMapper;

import Base.BaseTest;
import junit.framework.Assert;

public class ParentingMapperTest extends BaseTest {

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

	@Test
	@Transactional
	public void addTest() {
		parentingMapper.add(parenting);
		System.out.println(parenting.toString());
		Parenting findParenting = new Parenting();
		findParenting = parentingMapper.findOne(parenting.getId());
		Assert.assertEquals(text, findParenting.getText());
		Assert.assertEquals(sdf.format(time), sdf.format(findParenting.getTime()));
		Assert.assertEquals(author, findParenting.getAuthor());
	}

	@Test
	@Transactional
	public void updtest() {
		parentingMapper.add(parenting);
		System.out.println(parenting.toString());
		text = "����һ���ܳ�������2";
		parenting.setText(text);
		parentingMapper.upd(parenting);
		System.out.println(parenting.toString());
		Parenting findParenting = new Parenting();
		findParenting = parentingMapper.findOne(parenting.getId());
		Assert.assertEquals(text, findParenting.getText());
	}
	
	@Test
	@Transactional
	public void deltest() {
		parentingMapper.add(parenting);
		System.out.println(parenting.toString());
		parentingMapper.del(parenting.getId());
		Parenting findparenting = new Parenting();
		findparenting = parentingMapper.findOne(parenting.getId());
		Assert.assertEquals(null, findparenting);
	}
	
	@Test
	@Transactional
	public void getPostsByNameTest() {
		parentingMapper.add(parenting);
		System.out.println(parenting.toString());
		List<Parenting> Parentings = parentingMapper.getParentingByAuthor(author);
		System.out.println(Parentings);
	}
}
