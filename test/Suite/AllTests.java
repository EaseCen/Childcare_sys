package Suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import ControllerTest.ParentingControllerTest;
import ControllerTest.PostsControllerTest;
import ControllerTest.RepostsControllerTest;
import ControllerTest.UserControllerTest;
import MapperTest.ParentingMapperTest;
import MapperTest.PostsMapperTest;
import MapperTest.RepostsMapperTest;
import MapperTest.UserMapperTest;
import ServiceTest.ParentingServiceTest;
import ServiceTest.PostsServiceTest;
import ServiceTest.RepostsServiceTest;
import ServiceTest.UserServiceTest;

@RunWith(Suite.class)
@SuiteClasses({
	UserMapperTest.class,
	PostsMapperTest.class,
	RepostsMapperTest.class,
	ParentingMapperTest.class,
	UserServiceTest.class,
	PostsServiceTest.class,
	RepostsServiceTest.class,
	ParentingServiceTest.class,
	UserControllerTest.class,
	PostsControllerTest.class,
	RepostsControllerTest.class,
	ParentingControllerTest.class
})
public class AllTests {

}
