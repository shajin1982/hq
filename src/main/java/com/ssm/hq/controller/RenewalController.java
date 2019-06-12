package com.ssm.hq.controller;

import com.ssm.hq.service.CustomPostponeService;
import com.ssm.hq.service.UserService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
public class RenewalController {
    @Resource
    private CustomPostponeService customPostponeService;

    @Resource
    private UserService userService;

}
