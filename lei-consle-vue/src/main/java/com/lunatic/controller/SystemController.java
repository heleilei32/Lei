package com.lunatic.controller;

import com.lunatic.pojo.Result;
import com.lunatic.service.SystemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/system")
public class SystemController {

    Logger logger = LoggerFactory.getLogger(SystemController.class);

    @Autowired
    SystemService systemService;

    @RequestMapping("/getAllUsers")
    @ResponseBody
    public Result getAllUsers(){
        return systemService.getAllUsers();
    }



}
