package MapperTest;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.entity.Reposts;
import com.aaa.entity.User;
import com.aaa.mapper.RepostsDaoMapper;

import Base.BaseTest;
import junit.framework.Assert;

public class RepostsMapperTest extends BaseTest {

	//ע��RepostsDaoMapper
	@Autowired
	RepostsDaoMapper repostsMapper;
	
	private Integer repost_id;// �ظ����ӵ�id
	private String text;// �ظ�����
	private String repost_user;// �ظ���
	private Date time;// �ظ�ʱ��
	private String name;
	Reposts reposts;
	SimpleDateFormat sdf;
	
	@Before
	public void setUp() throws Exception {
		repost_id = 1;
		text = "����һ���ܳ��Ļظ�����";
		repost_user = "test";
		time = new Date();
		time.getTime();
		name = "����1";
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
		repostsMapper.add(reposts);
		System.out.println(reposts.toString());
		Reposts findReposts = new Reposts();
		findReposts = repostsMapper.findOne(reposts.getId());
		Assert.assertEquals(text, findReposts.getText());
		Assert.assertEquals(repost_user, findReposts.getRepost_user());
		Assert.assertEquals(sdf.format(time), sdf.format(findReposts.getTime()));
		Assert.assertEquals(name, findReposts.getName());
	}
	
	@Test
	@Transactional
	public void updtest() {
		repostsMapper.add(reposts);
		System.out.println(reposts.toString());
		text = "����һ���ܳ��Ļظ�����2";
		reposts.setText(text);
		repostsMapper.upd(reposts);
		Reposts findReposts = new Reposts();
		findReposts = repostsMapper.findOne(reposts.getId());
		System.out.println(findReposts.toString());
		Assert.assertEquals(text, findReposts.getText());
		Assert.assertEquals(repost_user, findReposts.getRepost_user());
		Assert.assertEquals(sdf.format(time), sdf.format(findReposts.getTime()));
		Assert.assertEquals(name, findReposts.getName());
	}
	
	@Test
	@Transactional
	public void deltest() {
		repostsMapper.add(reposts);
		System.out.println(reposts.toString());
		repostsMapper.del(reposts.getId());
		Reposts findReposts = new Reposts();
		findReposts = repostsMapper.findOne(reposts.getId());
		Assert.assertEquals(null, findReposts);
	}
	
	@Test
	@Transactional
	public void findAllTest() {
		List<Reposts> repostss = repostsMapper.findAll();
		System.out.println(repostss);
	}

}
