package com.ssm.hq.support;

import com.ssm.hq.model.QyWeiXin;
import net.sf.json.JSONObject;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;

import javax.servlet.http.HttpServletRequest;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class WeiXinFactory {
    public String getToken( HttpServletRequest request) {
        String path=request.getServletContext().getRealPath("/WEB-INF/config.xml");
        String url = "";
        String secret = "";
        String corpid = "";
        String access_token = "";
        ApplicationContext ctx = new ClassPathXmlApplicationContext("QyWeiXin.xml");
        QyWeiXin qyWeiXin=ctx.getBean("qyWeiXin",QyWeiXin.class);//创建bean的引用对象
        //获取beanXML的值1
        corpid=qyWeiXin.getCorpId();
        secret=qyWeiXin.getSecretValue();
        url=qyWeiXin.getGetToken();
        ClassPathResource resource = new ClassPathResource("../config.xml");//获取configXML
        try {
            //1、获取解析器
            SAXReader saxReader = new SAXReader();
            //2、获得 document 文档对象
            Document doc =saxReader.read(resource.getFile());
            //3、获取根元素
            Element rootElement = doc.getRootElement();
            //获取根元素名称
            //System.out.println(rootElement.getName());
            //获取子元素
            List<Element> childElements = rootElement.elements();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String access_token_time = childElements.get(1).getText();
            Date dateold = simpleDateFormat.parse(access_token_time);
            Date datenew = new Date();
            long datediff = (datenew.getTime() - dateold.getTime()) / 1000;//计算时间差
            //判断时间差
            if (datediff >= 7000) {
                String param = "corpid=" + corpid + "&corpsecret=" + secret;
                String str = HttpRequest.sendGet(url, param);
                //1、使用JSONObject
                JSONObject json = JSONObject.fromObject(str);
                access_token = json.getString("access_token");
                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
                String nowtime = df.format(new Date());
                childElements.get(0).setText(access_token);
                childElements.get(1).setText(nowtime);
                FileOutputStream out = new FileOutputStream(path);
                OutputFormat format = OutputFormat.createPrettyPrint();
                format.setEncoding("utf-8");
                XMLWriter writer = new XMLWriter(out, format);
                writer.write(doc);
                writer.close();
                return access_token;
            }else {
                return childElements.get(0).getText();
            }
        }catch (ParseException | DocumentException | IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getUid( HttpServletRequest request,String code){
        ApplicationContext ctx = new ClassPathXmlApplicationContext("QyWeiXin.xml");
        QyWeiXin qyWeiXin=ctx.getBean("qyWeiXin",QyWeiXin.class);//创建bean的引用对象
        String url=qyWeiXin.getGetUserInfo();
        if (url != null&&code!=null) {
            String access_token = this.getToken(request);
            String param = "access_token=" + access_token + "&code=" + code;
            String userJson = HttpRequest.sendGet(url, param);
            JSONObject json = JSONObject.fromObject(userJson);
            return json.getString("UserId");
        }
        else {
            return null;
        }
    }
}
