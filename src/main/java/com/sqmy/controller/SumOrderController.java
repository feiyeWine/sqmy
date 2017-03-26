package com.sqmy.controller;

import com.alibaba.fastjson.JSONObject;
import com.sqmy.model.SumOrder;
import com.sqmy.service.SumOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by YR on 2016/4/20.
 */
@Controller
public class SumOrderController {

    @Autowired
    private SumOrderService sumOrderService;

    @RequestMapping("/getOrderUnits")
    public @ResponseBody
    JSONObject getOrderUnits(){
        JSONObject jsonObject = new JSONObject();
        List<SumOrder> sumOrders = new ArrayList<>();
        try{
            sumOrders = sumOrderService.getSumOrderUnits();
            jsonObject.put("sumOrders",sumOrders);
        }catch (Exception e){
            jsonObject.put("sumOrders",sumOrders);
            e.printStackTrace();
        }

        return jsonObject;
    }

    @RequestMapping("/getOrderMembers")
    public @ResponseBody
    JSONObject getOrderMembers(){
        JSONObject jsonObject = new JSONObject();
        List<SumOrder> sumOrders = new ArrayList<>();
        try{
            sumOrders = sumOrderService.getSumOrderMembers();
            jsonObject.put("sumOrders",sumOrders);
        }catch (Exception e){
            jsonObject.put("sumOrders",sumOrders);
            e.printStackTrace();
        }

        return jsonObject;
    }
}
