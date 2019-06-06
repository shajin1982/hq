package com.ssm.hq.controller;

import com.ssm.hq.model.WXUser;
import com.ssm.hq.support.WeiXinFactory;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
    @RequestMapping("/internalaudit")
    public String internalaudit(Model model, HttpSession session){
        String uid="";
        uid= (String) session.getAttribute("uid");
        WeiXinFactory wf=new WeiXinFactory();
        WXUser wxuser=new WXUser();
        wxuser.setUserid(uid);
        JSONObject json=wf.getUser(uid);
        wxuser.setName(json.getString("name"));
        wxuser.setPosition(json.getString("position"));
        wxuser.setDepartment(wf.getDepartment(json.getString("department")));
        wxuser.setAvatar(json.getString("avatar"));
        model.addAttribute("WXUser", wxuser);
        return "internalaudit";
    }
}
