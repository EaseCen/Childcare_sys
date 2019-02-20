package ServiceTest;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.biz.UserBiz;
import com.aaa.entity.User;

import Base.BaseTest;
import junit.framework.Assert;

@Service
public class UserServiceTest extends BaseTest {

	//×¢ÈëUserBiz
	@Autowired
	private UserBiz userBiz;
	
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

	@Test
	@Transactional
	public void addUserTest() {
		userBiz.addUser(user);
		System.out.println(user.toString());
		User findUser = new User();
		findUser = userBiz.findOne(user.getId());
		Assert.assertEquals(username, findUser.getUsername());
		Assert.assertEquals(password, findUser.getPassword());
		Assert.assertEquals(address, findUser.getAddress());
	}
	
	@Test
	@Transactional
	public void addAdminTest() {
		userBiz.addAdmin(user);
		System.out.println(user.toString());
		User findUser = new User();
		findUser = userBiz.findOne(user.getId());
		Assert.assertEquals(username, findUser.getUsername());
		Assert.assertEquals(password, findUser.getPassword());
		Assert.assertEquals(address, findUser.getAddress());
	}
	
	@Test
	@Transactional
	public void CheckLoginAndPwdTest() {
		userBiz.addUser(user);
		System.out.println(user.toString());
		User checkUser = new User();
		checkUser = userBiz.CheckLoginAndPwd(username, password);
		Assert.assertEquals(username, checkUser.getUsername());
		Assert.assertEquals(password, checkUser.getPassword());
		Assert.assertEquals(address, checkUser.getAddress());
	}
	
	@Test
	@Transactional
	public void delUserTest() {
		userBiz.addUser(user);
		System.out.println(user.toString());
		userBiz.delUser(user.getId());
		User findUser = new User();
		findUser = userBiz.findOne(user.getId());
		Assert.assertEquals(null, findUser);
	}
	
	@Test
	@Transactional
	public void updUserTest() {
		userBiz.addUser(user);
		System.out.println(user.toString());
		username = "testname2";
		password = "1234";
		address = "123";
		user.setUsername(username);
		user.setPassword(password);
		user.setAddress(address);
		userBiz.updUser(user);
		System.out.println(user.toString());
		User findUser = new User();
		findUser = userBiz.findOne(user.getId());
		Assert.assertEquals(username, findUser.getUsername());
		Assert.assertEquals(password, findUser.getPassword());
		Assert.assertEquals(address, findUser.getAddress());
	}
	
	@Test
	@Transactional
	public void findAllTest() {
		List<User> users = userBiz.findAll();
		System.out.println(users);
	}

}
