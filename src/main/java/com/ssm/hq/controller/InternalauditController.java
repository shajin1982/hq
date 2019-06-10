package com.ssm.hq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InternalauditController {
    @RequestMapping("/internalaudit2")
    public String internalaudit2(){
        return "demobody2";
    }
}
