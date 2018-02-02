package com.lunatic.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    Logger logger = LoggerFactory.getLogger(IndexController.class);

    @RequestMapping({"", "/", "/login"})
    public String toLogin(){
        return "login";
    }

    @RequestMapping({"/auth"})
    public String auth(String username,String password){
        logger.info("用户名:"+username+" 密码:"+password);
        // TODO: 2018/2/2  写鉴权 账号验证
        return "index";
    }


}
