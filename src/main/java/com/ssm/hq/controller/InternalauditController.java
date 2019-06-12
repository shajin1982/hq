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

    @RequestMapping("/internalauditPostpone")
    public String internalauditPostpone(Model model, HttpSession session){
        String uid="";
        uid= (String) session.getAttribute("uid");
        WeiXinFactory wf=new WeiXinFactory();
        WXUser wxuser=new WXUser();
        wxuser=wf.getWxuser(uid);
        model.addAttribute("WXUser", wxuser);
        return "internalauditPostpone";
    }

    @RequestMapping("/demo")
    public String internalauditdemo(Model model){
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList",userList);
        return "demo";
    }

    @RequestMapping("/demo2")
    public String internalauditdemo2(Model model){
        //MultipleDataSource.setDataSourceKey("FWOASource");
        List<CustomPostpone> customPostpones=customPostponeService.getAllCustomPostpone();
        model.addAttribute("customPostpones",customPostpones);
        return "demo2";
    }
}
