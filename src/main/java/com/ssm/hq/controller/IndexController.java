package com.ssm.hq.controller;


import com.ssm.hq.model.WXUser;
import com.ssm.hq.support.WeiXinFactory;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index(String code, Model model){
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
        String uid=wf.getUid(code);
        WXUser wxuser=new WXUser();
        wxuser.setUserid(uid);
        JSONObject json=wf.getUser(uid);
        wxuser.setName(json.getString("name"));
        wxuser.setPosition(json.getString("position"));
        wxuser.setDepartment(wf.getDepartment(json.getString("department")));
        wxuser.setAvatar(json.getString("avatar"));
        model.addAttribute("WXUser", wxuser);
        return "home";
    }
}
