package Base;

import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

/*controller�㵥Ԫ���Ի���*/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:config/spring/applicationContext.xml"})
public class BaseControllerTest {

	@Autowired
    private WebApplicationContext webApplicationContext;

    protected MockMvc mockMvc;

    protected MockHttpServletRequest request;
    protected MockHttpServletResponse response;
    
    @Before
    public void setup(){
        //����web����������
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }
}
