package Suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import ControllerTest.MemberControllerTest;
import ControllerTest.ParentingControllerTest;
import ControllerTest.PostsControllerTest;
import ControllerTest.RepostsControllerTest;
import ControllerTest.UserControllerTest;
import MapperTest.MemberMapperTest;
import MapperTest.ParentingMapperTest;
import MapperTest.PostsMapperTest;
import MapperTest.RepostsMapperTest;
import MapperTest.UserMapperTest;
import ServiceTest.MemberServiceTest;
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
	MemberMapperTest.class,
	UserServiceTest.class,
	PostsServiceTest.class,
	RepostsServiceTest.class,
	ParentingServiceTest.class,
	MemberServiceTest.class,
	UserControllerTest.class,
	PostsControllerTest.class,
	RepostsControllerTest.class,
	ParentingControllerTest.class,
	MemberControllerTest.class
})
public class AllTests {

}
