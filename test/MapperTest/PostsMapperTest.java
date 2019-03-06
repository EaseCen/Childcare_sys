package MapperTest;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.entity.Posts;
import com.aaa.mapper.PostsDaoMapper;

import Base.BaseTest;
import junit.framework.Assert;

public class PostsMapperTest extends BaseTest {

	//ע��PostsDaoMapper
	@Autowired
	private PostsDaoMapper postsMapper;
	
	String name;// ���ӱ���
	String text;// ��������
	Date time;// ����ʱ��
	String author;// ��������id
	Posts posts;
	SimpleDateFormat sdf;
	
	@Before
	public void setUp() throws Exception {
		name = "���Ա���";
		text = "����һ���ܳ�������";
		time = new Date();
		time.getTime();
		author = "��������";
		posts = new Posts();
		posts.setName(name);
		posts.setText(text);
		posts.setTime(time);
		posts.setAuthor(author);
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	}

	@Test
	@Transactional
	public void addtest() {
		postsMapper.add(posts);
		System.out.println(posts.toString());
		Posts findPosts = new Posts();
		findPosts = postsMapper.findOne(posts.getId());
		Assert.assertEquals(name, findPosts.getName());
		Assert.assertEquals(text, findPosts.getText());
		Assert.assertEquals(sdf.format(time), sdf.format(findPosts.getTime()));
		Assert.assertEquals(author, findPosts.getAuthor());
	}
	
	@Test
	@Transactional
	public void updtest() {
		postsMapper.add(posts);
		System.out.println(posts.toString());
		name = "���Ա���2";
		text = "����һ���ܳ�������2";
		time = new Date();
		time.getTime();
		author = "��������2";
		posts.setName(name);
		posts.setText(text);
		posts.setTime(time);
		posts.setAuthor(author);
		postsMapper.upd(posts);
		System.out.println(posts.toString());
		Posts findPosts = new Posts();
		findPosts = postsMapper.findOne(posts.getId());
		Assert.assertEquals(name, findPosts.getName());
		Assert.assertEquals(text, findPosts.getText());
		Assert.assertEquals(sdf.format(time), sdf.format(findPosts.getTime()));
		Assert.assertEquals(author, findPosts.getAuthor());
	}
	
	@Test
	@Transactional
	public void deltest() {
		postsMapper.add(posts);
		System.out.println(posts.toString());
		postsMapper.del(posts.getId());
		Posts findPosts = new Posts();
		findPosts = postsMapper.findOne(posts.getId());
		Assert.assertEquals(null, findPosts);
	}
	
	@Test
	@Transactional
	public void findAllTest() {
		List<Posts> postss = postsMapper.findAll();
		System.out.println(postss);
	}
	
	@Test
	@Transactional
	public void getPostsByNameTest() {
		postsMapper.add(posts);
		System.out.println(posts.toString());
		List<Posts> postss = postsMapper.getPostsByName(posts);
		System.out.println(postss);
	}

	@Test
	@Transactional
	public void findSameCityTest() {
		List<Posts> postss = postsMapper.findSameCity(posts);
		System.out.println(postss);
	}
	
	@Test
	@Transactional
	public void findSameAgeTest() {
		List<Posts> postss = postsMapper.findSameAge(posts);
		System.out.println(postss);
	}
}
