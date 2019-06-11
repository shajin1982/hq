package testjava;

import com.ssm.hq.model.CustomPostpone;
import com.ssm.hq.model.QyWeiXin;
import com.ssm.hq.service.CustomPostponeService;
import com.ssm.hq.support.HttpRequest;
import com.ssm.hq.support.MultipleDataSource;
import com.ssm.hq.support.WeiXinFactory;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.jdom.JDOMException;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;

public class TestOne {
    @Resource
    private CustomPostponeService customPostponeService;
    @Test
    public void test3() throws IOException, JDOMException, DocumentException, ParseException {
        List<CustomPostpone> list=customPostponeService.getAllCustomPostpone();
    }
}
