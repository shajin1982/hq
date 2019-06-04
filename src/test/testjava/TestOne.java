package testjava;

import com.ssm.hq.model.QyWeiXin;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.jdom.JDOMException;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;


public class TestOne {
    @Test
    public void test3() throws IOException, JDOMException, DocumentException {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("QyWeiXin.xml");
        QyWeiXin qyWeiXin=ctx.getBean("qyWeiXin",QyWeiXin.class);//创建bean的引用对象
        System.out.println(qyWeiXin.getAccessTokenTime());
        ClassPathResource resource = new ClassPathResource("config.xml");
        //1、获取解析器
        SAXReader saxReader = new SAXReader();
        //2、获得 document 文档对象
        Document doc =saxReader.read(resource.getFile());
        //3、获取根元素
        Element rootElement = doc.getRootElement();
        //获取根元素名称
        System.out.println(rootElement.getName());
//        Document doc = new SAXBuilder().build(resource.getFile());
//        Element root = doc.getRootElement();
//        Element element = root.getChild("Address");
//        element.setText("中国四川省成都市");
//        root.setContent(element);
//        doc.setContent(root);
//        FileOutputStream out = new FileOutputStream(resource.getFile());
//        OutputFormat format = OutputFormat.createPrettyPrint();
//        format.setEncoding("utf-8");
//        XMLWriter writer=new XMLWriter();
//        writer.write(doc);
//        writer.close();
    }
}
