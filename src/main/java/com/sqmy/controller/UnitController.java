package com.sqmy.controller;

import com.alibaba.fastjson.JSONObject;
import com.sqmy.model.UnitsInfo;
import com.sqmy.service.UnitService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by YR on 2016/4/17.
 */
@Controller
public class UnitController {

    final static Logger LOGGER = Logger.getLogger(UnitController.class);

    @Autowired
    UnitService unitService;

    @RequestMapping("/loadAddUnit")
    public String  loadUnit(){
        return "addUnit";
    }

    /**
     * 获取单位
     * @param modelAndView
     * @return
     */
    @RequestMapping("/getAllUnits")
    public ModelAndView getAllUnits(ModelAndView modelAndView){
        List<UnitsInfo> units = new ArrayList<UnitsInfo>();
        try {
            units= unitService.getUnits();
            modelAndView.addObject("units",units);
            modelAndView.setViewName("unit");
        }catch (Exception e){
            e.printStackTrace();
        }

        return modelAndView;
    }

    /**
     * 修改单位信息
     * @param id
     * @param unitNumber
     * @param unitName
     * @param unitPhoneNum
     * @param unitEmail
     * @param unitType
     * @param unitClasses
     * @return
     */
    @RequestMapping("/modifyUnit")
    public @ResponseBody
    JSONObject modifyUnit(String id,String unitNumber,String unitName,String unitPhoneNum,String unitEmail,String unitType,String unitClasses){
        JSONObject jsonObject = new JSONObject();
        try{
            UnitsInfo unitsInfo = new UnitsInfo();
            unitsInfo.setId(Integer.parseInt(id));
            unitsInfo.setUnitNum(unitNumber);
            unitsInfo.setUnitName(unitName);
            unitsInfo.setPhoneNum(unitPhoneNum);
            unitsInfo.setEmail(unitEmail);
            unitsInfo.setType(unitType);
            unitsInfo.setClasses(unitClasses);
            unitsInfo.setCreateTime(new Date());

            unitService.updateUnit(unitsInfo);
            jsonObject.put("status","success");
        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }

        return jsonObject;
    }

    /**
     * 删除单位
     * @param id
     * @return
     */
    @RequestMapping("/deleteUnit")
    public @ResponseBody JSONObject deleteUnit(String id){
        JSONObject jsonObject= new JSONObject();
        if(id!=null){
            unitService.deleteUnit(Integer.parseInt(id));
            jsonObject.put("status","success");
        }else{
            jsonObject.put("status","fail");
        }
        return  jsonObject;
    }

    /**
     * 添加单位
     * @param unitId
     * @param unitNumber
     * @param unitName
     * @param unitPhoneNum
     * @param unitEmail
     * @param unitType
     * @param unitClass
     * @return
     */
    @RequestMapping("/addUnit")
    public @ResponseBody JSONObject addUnit(String unitId,String unitNumber,String unitName,String unitPhoneNum,String
            unitEmail,String unitType,String unitClass){
        JSONObject jsonObject = new JSONObject();
        UnitsInfo unitsInfo = new UnitsInfo();
        try{
            unitsInfo.setUnitNum(unitNumber);
            unitsInfo.setUnitName(unitName);
            unitsInfo.setPhoneNum(unitPhoneNum);
            unitsInfo.setEmail(unitEmail);
            unitsInfo.setType(unitType);
            unitsInfo.setClasses(unitClass);
            unitsInfo.setCreateTime(new Date());

            unitService.addUnit(unitsInfo);
            jsonObject.put("status","success");

        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }

        return jsonObject;
    }
}
