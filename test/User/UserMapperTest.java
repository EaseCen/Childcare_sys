package User;

import static org.junit.Assert.*;

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
	User user,user2;
	
	@Before
	public void setUp() throws Exception {
		username = "testname";
		password = "123";
		address = "12";
		state = 1;
		user = new User();
		user2 = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setAddress(address);
		user.setState(1);
	}

	@Test
//	@Transactional
	public void addUserTest() {
		userMapper.addUser(user);
		user2 = userMapper.findOne(user.getId());
		System.out.print("2333");
//		Assert.assertEquals(username, user2.getUsername());
//		Assert.assertEquals(password, user2.getPassword());
//		Assert.assertEquals(address, user2.getAddress());
	}

}