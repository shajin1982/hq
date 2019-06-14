package com.ssm.hq.controller;

import com.ssm.hq.model.CustomPostpone;
import com.ssm.hq.service.CustomPostponeService;
import com.ssm.hq.service.UserService;
import com.ssm.hq.support.MultipleDataSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class RenewalController {
    @Resource
    private CustomPostponeService customPostponeService;

    @Resource
    private UserService userService;

    @RequestMapping(value = "/demo",method = {RequestMethod.POST})
    public String demo(String customName,String date){
        System.out.println(customName+"******"+date);
        return "";
    }

    @RequestMapping(value = "/demo2",method = {RequestMethod.POST})
    @ResponseBody//返回json格式的数据
    public List<CustomPostpone> demo2(String query){
        System.out.println(query);
        MultipleDataSource.setDataSourceKey("FWOASource");
        List<CustomPostpone> customPostpones=customPostponeService.getCustomPostponeByLikeName(query);
        return customPostpones;
    }
}
