package com.sqmy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by YR on 2016/4/18.
 */
@Controller
public class ReportController {


    @RequestMapping("/reportUnit")
    public String reportUnit(){
        return "unitChart";
    }

    @RequestMapping("/reportMember")
    public String reportMember(){
        return "memberChart";
    }
}
