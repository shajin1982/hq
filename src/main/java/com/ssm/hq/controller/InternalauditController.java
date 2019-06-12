package com.ssm.hq.controller;

import com.ssm.hq.model.CustomPostpone;
import com.ssm.hq.model.User;
import com.ssm.hq.model.WXUser;
import com.ssm.hq.service.CustomPostponeService;
import com.ssm.hq.service.UserService;
import com.ssm.hq.support.MultipleDataSource;
import com.ssm.hq.support.WeiXinFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class InternalauditController {
    @Resource
    private CustomPostponeService customPostponeService;

    @Resource
    private UserService userService;

//    @RequestMapping("/demohead")
//    public String internalauditPostpone(Model model, HttpSession session){
//        String uid="";
//        uid= (String) session.getAttribute("uid");
//        WeiXinFactory wf=new WeiXinFactory();
//        WXUser wxuser=new WXUser();
//        wxuser=wf.getWxuser(uid);
//        model.addAttribute("WXUser", wxuser);
//        MultipleDataSource.setDataSourceKey("dataSource");
//        List<User> userList = userService.getAllUser();
//        model.addAttribute("userList",userList);
//        return "demohead";
//    }
//
//    @RequestMapping("/demo")
//    public String internalauditdemo(Model model){
//        MultipleDataSource.setDataSourceKey("dataSource");
//        List<User> userList = userService.getAllUser();
//        model.addAttribute("userList",userList);
//        return "demo";
//    }
//
    @RequestMapping("/demobody")
    public String internalauditdemo2(Model model){
        MultipleDataSource.setDataSourceKey("FWOASource");
        List<CustomPostpone> customPostpones=customPostponeService.getAllCustomPostpone();
        model.addAttribute("customPostpones",customPostpones);
        return "demobody";
    }
}
