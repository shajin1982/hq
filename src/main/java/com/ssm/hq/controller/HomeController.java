package com.ssm.hq.controller;

import com.ssm.hq.model.CustomPostpone;
import com.ssm.hq.model.WXUser;
import com.ssm.hq.service.CustomPostponeService;
import com.ssm.hq.support.MultipleDataSource;
import com.ssm.hq.support.WeiXinFactory;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HomeController {
    @Resource
    private CustomPostponeService customPostponeService;

    @RequestMapping("/renewal")
    public  String renewal(Model model, HttpSession session){
        String uid="";
        uid= (String) session.getAttribute("uid");
        WeiXinFactory wf=new WeiXinFactory();
        WXUser wxuser=new WXUser();
        wxuser=wf.getWxuser(uid);
        model.addAttribute("WXUser", wxuser);
        MultipleDataSource.setDataSourceKey("FWOASource");
        List<CustomPostpone> customPostpones=customPostponeService.getAllCustomPostponeName();
        model.addAttribute("customPostpones",customPostpones);
        return "renewal";
    }
}
