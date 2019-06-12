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
import java.sql.*;
import java.text.ParseException;
import java.util.List;

public class TestOne {

    @Test
    public void test3() throws IOException, JDOMException, DocumentException, ParseException, ClassNotFoundException, SQLException {
        Class.forName("net.sourceforge.jtds.jdbc.Driver");
        Connection con;
        con = DriverManager.getConnection("jdbc:jtds:sqlserver://192.168.1.235:1433;DatabaseName=ecology_demo","sa", "abc123");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select kh as customName,zqyy as postponeCause,zqsqsj as postponeTime from formtable_main_20");
        while (rs.next()){
            System.out.print(rs.getString("customName"));
        }
    }
}
