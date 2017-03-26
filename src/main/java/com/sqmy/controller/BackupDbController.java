package com.sqmy.controller;

import com.alibaba.fastjson.JSONObject;
import com.sqmy.model.BackupDb;
import com.sqmy.service.BackupDbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */
@Controller
public class BackupDbController {
    @Autowired
    BackupDbService backupDbService;

    @RequestMapping("/lookDb")
    public ModelAndView lookDb(ModelAndView modelAndView){
        List<BackupDb> dbs = new ArrayList<>();
        try {
            dbs = backupDbService.getAllbackupDb();
            modelAndView.addObject("dbs",dbs);
            modelAndView.setViewName("backupDatabase");

        }catch (Exception e){
            e.printStackTrace();
        }

        return modelAndView;
    }

    @RequestMapping("/backupDb")
    public @ResponseBody
    JSONObject backupDb(){
        JSONObject jsonObject = new JSONObject();
        try {
            if(backupDbService.backupDb()){
                jsonObject.put("status","success");
            }else{
                jsonObject.put("status","fail");
            }
        }catch (Exception e){
            jsonObject.put("status","fail");
        }
        return jsonObject;
    }
}
