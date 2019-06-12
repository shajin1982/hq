package testjava;

import com.ssm.hq.model.User;
import com.ssm.hq.service.UserService;
import com.ssm.hq.service.impl.UserServiceImpl;
import org.dom4j.DocumentException;
import org.jdom.JDOMException;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

public class TestOne {

    private UserService userService;
    @Before
    public void getBefore(){
        String xmlPath = "target/hq/WEB-INF/classes/spring-mybatis.xml";
        ApplicationContext ac = new FileSystemXmlApplicationContext(xmlPath);
        userService = ac.getBean(UserServiceImpl.class);
    }

    @Test
    public void test3() throws IOException, JDOMException, DocumentException, ParseException {
        List<User> userList = userService.getAllUser();
    }
}
