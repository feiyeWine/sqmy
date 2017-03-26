package com.sqmy.controller;

import com.alibaba.fastjson.JSONObject;
import com.sqmy.model.CppccMember;
import com.sqmy.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */
@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/loadAddMember")
    public String loadAddMember(){
        return "addMember";
    }

    /**
     *
     * @param modelAndView
     * @return
     */
    @RequestMapping("/getAllMembers")
    public ModelAndView getAllMembers(ModelAndView modelAndView){
        JSONObject jsonObject = new JSONObject();
        List<CppccMember> members = new ArrayList<>();
        try {
            members = memberService.getMembers();
            modelAndView.addObject("members",members);
            modelAndView.setViewName("member");
        }catch (Exception e){
            e.printStackTrace();
        }

        return modelAndView;
    }

    /**
     *
     * @param id
     * @param memberName
     * @param idCard
     * @param memberPhoneNum
     * @param memberEmail
     * @param memberType
     * @return
     */
    @RequestMapping("/modifyMember")
    public @ResponseBody JSONObject modifyMember(String id,String memberName,String idCard,String memberPhoneNum,String memberEmail,
                                                 String memberType){
        JSONObject jsonObject = new JSONObject();
        CppccMember cppccMember = new CppccMember();
        try{
            cppccMember.setId(Integer.parseInt(id));
            cppccMember.setName(memberName);
            cppccMember.setIdCard(idCard);
            cppccMember.setPhoneNum(memberPhoneNum);
            cppccMember.setEmail(memberEmail);
            cppccMember.setType(memberType);
            cppccMember.setCreateTime(new Date());

            memberService.modifyMember(cppccMember);
            jsonObject.put("status","success");
        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }

        return jsonObject;
    }

    /**
     *
     * @param id
     * @return
     */
    @RequestMapping("/deleteMember")
    public @ResponseBody JSONObject deleteMember(String id){
        JSONObject jsonObject = new JSONObject();
        try{
            memberService.deleteMember(Integer.parseInt(id));
            jsonObject.put("status","success");
        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }
        return jsonObject;
    }

    @RequestMapping("/addMember")
    public @ResponseBody JSONObject addMember(String memberName,String memberIdcard,String memberPhoneNum,String memberEmail,
                                              String memberType){
        JSONObject jsonObject = new JSONObject();
        CppccMember cppccMember = new CppccMember();

        try {
            cppccMember.setName(memberName);
            cppccMember.setIdCard(memberIdcard);
            cppccMember.setPhoneNum(memberPhoneNum);
            cppccMember.setEmail(memberEmail);
            cppccMember.setType(memberType);
            cppccMember.setCreateTime(new Date());

            memberService.addMember(cppccMember);
            jsonObject.put("status","success");
        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }

        return jsonObject;
    }
}
