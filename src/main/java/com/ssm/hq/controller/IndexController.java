package com.ssm.hq.controller;


import com.mysql.jdbc.StringUtils;
import com.ssm.hq.model.WXUser;
import com.ssm.hq.support.WeiXinFactory;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jms.Session;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index(String code, Model model, HttpSession session){
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
        String uid="";
        uid= (String) session.getAttribute("uid");
        if(StringUtils.isNullOrEmpty(uid)){
            WeiXinFactory wf=new WeiXinFactory();
            uid=wf.getUid(code);
            session.setAttribute("uid",uid);
        }
        WeiXinFactory wf=new WeiXinFactory();
        WXUser wxuser=new WXUser();
        wxuser=wf.getWxuser(uid);
        model.addAttribute("WXUser", wxuser);
        return "home";
    }
}
