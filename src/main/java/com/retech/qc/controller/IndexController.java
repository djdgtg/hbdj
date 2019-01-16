package com.retech.qc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
@Controller
public class IndexController {

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/main")
    public String main() {
        return "main";
    }

    @RequestMapping("/testplugin")
    @ResponseBody
    public String test(HttpServletRequest request) {
        return "Hello,I am port:"+request.getServerPort();
    }

}
