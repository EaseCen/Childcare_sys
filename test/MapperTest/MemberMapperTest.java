package MapperTest;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.entity.Member;
import com.aaa.entity.Posts;
import com.aaa.mapper.MemberDaoMapper;

import Base.BaseTest;
import junit.framework.Assert;

public class MemberMapperTest extends BaseTest {

	//注入MemberDaoMapper
	@Autowired
	private MemberDaoMapper memberMapper;
	
	String username;// 申请人
	String reason;// 申请原因
	Member member;
	
	@Before
	public void setUp() throws Exception {
		username = "测试账号";
		reason = "做毕设好快乐啊";
		member = new Member();
		member.setUsername(username);
		member.setReason(reason);
	}

	@Test
	@Transactional
	public void addTest() {
		memberMapper.add(member);
		System.out.println(member.toString());
		Member findMember = new Member();
		findMember = memberMapper.findOne(member.getId());
		Assert.assertEquals(username, findMember.getUsername());
		Assert.assertEquals(reason, findMember.getReason());
		Assert.assertEquals(6, findMember.getState());
	}

	@Test
	@Transactional
	public void updatePassTest() {
		memberMapper.add(member);
		System.out.println(member.toString());
		memberMapper.updPass(member);
		System.out.println(member.toString());
		Member findMember = new Member();
		findMember = memberMapper.findOne(member.getId());
		Assert.assertEquals(username, findMember.getUsername());
		Assert.assertEquals(reason, findMember.getReason());
		Assert.assertEquals(7, findMember.getState());
	}
	
	@Test
	@Transactional
	public void updateRejectTest() {
		memberMapper.add(member);
		System.out.println(member.toString());
		memberMapper.updReject(member);
		Member findMember = new Member();
		findMember = memberMapper.findOne(member.getId());
		Assert.assertEquals(username, findMember.getUsername());
		Assert.assertEquals(reason, findMember.getReason());
		Assert.assertEquals(8, findMember.getState());
	}
	
	@Test
	@Transactional
	public void findAllTest() {
		List<Member> members = memberMapper.findAll();
		System.out.println(members);
	}
}
