package com.ssm.hq.controller;


import com.ssm.hq.support.WeiXinFactory;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.ServletContextResource;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index(String code, Model model,HttpServletRequest request) throws DocumentException {
//        SAXReader saxReader = new SAXReader();
//        //2、获得 document 文档对象
//        String path=request.getServletContext().getRealPath("/WEB-INF/config.xml");
//        saxReader.read(path);
//        Document doc = saxReader.read("/resources/config.xml");
//        //3、获取根元素
//        Element rootElement = doc.getRootElement();
//        String getContextPath=request.getContextPath();
//        InputStream in=request.getServletContext().getResourceAsStream( "/webapp/WEB-INF/web.xml" );
//        //InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream("../main/resources/config.xml");
//        SAXReader reader = new SAXReader();
//        Document doc = reader.read(in);
//        Element driverNameElt = (Element)doc.selectObject("/access_token/db-access_token_value");
//        System.out.println(driverNameElt.getText());
        WeiXinFactory wf=new WeiXinFactory();
        System.out.println(wf.getUid(request,code));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(simpleDateFormat.format(new Date()));// new Date()为获取当前系统时间
        return "home";
    }
}
