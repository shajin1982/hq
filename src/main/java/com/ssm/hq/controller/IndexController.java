package com.ssm.hq.controller;


import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index() throws IOException, DocumentException {
        ClassPathResource resource = new ClassPathResource("config.xml");
        //1、获取解析器
        SAXReader saxReader = new SAXReader();
        //2、获得 document 文档对象
        Document doc =saxReader.read(resource.getFile());
        //3、获取根元素
        Element rootElement = doc.getRootElement();
        //获取根元素名称
        System.out.println(rootElement.getName());
        return "index";
    }
}
