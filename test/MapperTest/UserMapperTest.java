package MapperTest;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.entity.User;
import com.aaa.mapper.UserMapper;

import Base.BaseTest;
import junit.framework.Assert;

public class UserMapperTest extends BaseTest {
	
	//×¢ÈëUserMapper
	@Autowired
	private UserMapper userMapper;
	
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
		userMapper.addUser(user);
		System.out.println(user.toString());
		User findUser = new User();
		findUser = userMapper.findOne(user.getId());
		Assert.assertEquals(username, findUser.getUsername());
		Assert.assertEquals(password, findUser.getPassword());
		Assert.assertEquals(address, findUser.getAddress());
	}
	
	@Test
	@Transactional
	public void addAdminTest() {
		userMapper.addAdmin(user);
		System.out.println(user.toString());
		User findUser = new User();
		findUser = userMapper.findOne(user.getId());
		Assert.assertEquals(username, findUser.getUsername());
		Assert.assertEquals(password, findUser.getPassword());
		Assert.assertEquals(address, findUser.getAddress());
	}
	
	@Test
	@Transactional
	public void CheckLoginAndPwdTest() {
		userMapper.addUser(user);
		System.out.println(user.toString());
		User checkUser = new User();
		checkUser = userMapper.CheckLoginAndPwd(username, password);
		Assert.assertEquals(username, checkUser.getUsername());
		Assert.assertEquals(password, checkUser.getPassword());
		Assert.assertEquals(address, checkUser.getAddress());
	}
	
	@Test
	@Transactional
	public void delUserTest() {
		userMapper.addUser(user);
		System.out.println(user.toString());
		userMapper.delUser(user.getId());
		User findUser = new User();
		findUser = userMapper.findOne(user.getId());
		Assert.assertEquals(null, findUser);
	}
	
	@Test
	@Transactional
	public void updUserTest() {
		userMapper.addUser(user);
		System.out.println(user.toString());
		username = "testname2";
		password = "1234";
		address = "123";
		user.setUsername(username);
		user.setPassword(password);
		user.setAddress(address);
		userMapper.updUser(user);
		System.out.println(user.toString());
		User findUser = new User();
		findUser = userMapper.findOne(user.getId());
		Assert.assertEquals(username, findUser.getUsername());
		Assert.assertEquals(password, findUser.getPassword());
		Assert.assertEquals(address, findUser.getAddress());
	}
	
	@Test
	@Transactional
	public void findAllTest() {
		List<User> users = userMapper.findAll();
		System.out.println(users);
	}

}