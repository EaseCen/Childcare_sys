package User;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.aaa.entity.User;
import com.aaa.mapper.UserMapper;

import Base.BaseTest;

public class UserMapperTest extends BaseTest {
	
	//×¢ÈëUserMapper
	@Autowired
	private UserMapper userMapper;
	
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void addUserTest() {
		User user = new User();
		user.setUsername("test2");
		user.setPassword("123");
		user.setAddress("12");
		user.setState(1);
		userMapper.addUser(user);
	}

}
