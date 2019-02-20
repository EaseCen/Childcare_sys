package ServiceTest;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.biz.PostsBiz;
import com.aaa.entity.Posts;

import Base.BaseTest;
import junit.framework.Assert;

@Service
public class PostsServiceTest extends BaseTest {

	//注入PostsDaoMapper
	@Autowired
	private PostsBiz postsBiz;
	
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
		author = "测试作者";
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
		postsBiz.add(posts);
		System.out.println(posts.toString());
		Posts findPosts = new Posts();
		findPosts = postsBiz.findOne(posts.getId());
		Assert.assertEquals(name, findPosts.getName());
		Assert.assertEquals(text, findPosts.getText());
		Assert.assertEquals(sdf.format(time), sdf.format(findPosts.getTime()));
		Assert.assertEquals(author, findPosts.getAuthor());
	}
	
	@Test
	@Transactional
	public void updtest() {
		postsBiz.add(posts);
		System.out.println(posts.toString());
		name = "测试标题2";
		text = "我是一条很长的正文2";
		time = new Date();
		time.getTime();
		author = "测试作者2";
		posts.setName(name);
		posts.setText(text);
		posts.setTime(time);
		posts.setAuthor(author);
		postsBiz.upd(posts);
		System.out.println(posts.toString());
		Posts findPosts = new Posts();
		findPosts = postsBiz.findOne(posts.getId());
		Assert.assertEquals(name, findPosts.getName());
		Assert.assertEquals(text, findPosts.getText());
		Assert.assertEquals(sdf.format(time), sdf.format(findPosts.getTime()));
		Assert.assertEquals(author, findPosts.getAuthor());
	}
	
	@Test
	@Transactional
	public void deltest() {
		postsBiz.add(posts);
		System.out.println(posts.toString());
		postsBiz.del(posts.getId());
		Posts findPosts = new Posts();
		findPosts = postsBiz.findOne(posts.getId());
		Assert.assertEquals(null, findPosts);
	}
	
	@Test
	@Transactional
	public void findAllTest() {
		List<Posts> postss = postsBiz.findAll();
		System.out.println(postss);
	}

}
