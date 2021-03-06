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

import com.aaa.biz.RepostsBiz;
import com.aaa.entity.Reposts;

import Base.BaseTest;
import junit.framework.Assert;

@Service
public class RepostsServiceTest extends BaseTest {

	//注入RepostsBiz
	@Autowired
	private RepostsBiz repostsBiz;
	
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

	@Test
	@Transactional
	public void addtest() {
		repostsBiz.add(reposts);
		System.out.println(reposts.toString());
		Reposts findReposts = new Reposts();
		findReposts = repostsBiz.findOne(reposts.getId());
		Assert.assertEquals(text, findReposts.getText());
		Assert.assertEquals(repost_user, findReposts.getRepost_user());
		Assert.assertEquals(sdf.format(time), sdf.format(findReposts.getTime()));
		Assert.assertEquals(name, findReposts.getName());
	}
	
	@Test
	@Transactional
	public void updtest() {
		repostsBiz.add(reposts);
		System.out.println(reposts.toString());
		text = "这是一条很长的回复内容2";
		reposts.setText(text);
		repostsBiz.upd(reposts);
		Reposts findReposts = new Reposts();
		findReposts = repostsBiz.findOne(reposts.getId());
		System.out.println(findReposts.toString());
		Assert.assertEquals(text, findReposts.getText());
		Assert.assertEquals(repost_user, findReposts.getRepost_user());
		Assert.assertEquals(sdf.format(time), sdf.format(findReposts.getTime()));
		Assert.assertEquals(name, findReposts.getName());
	}
	
	@Test
	@Transactional
	public void deltest() {
		repostsBiz.add(reposts);
		System.out.println(reposts.toString());
		repostsBiz.del(reposts.getId());
		Reposts findReposts = new Reposts();
		findReposts = repostsBiz.findOne(reposts.getId());
		Assert.assertEquals(null, findReposts);
	}
	
	@Test
	@Transactional
	public void findAllTest() {
		List<Reposts> repostss = repostsBiz.findAll();
		System.out.println(repostss);
	}

}
