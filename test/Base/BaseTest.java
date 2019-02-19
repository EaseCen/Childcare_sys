package Base;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/*整合Spring和Junit的基类*/


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:config/spring/applicationContext.xml"})
public class BaseTest {
	
}