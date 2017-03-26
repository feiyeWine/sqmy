package com.sqmy.controller;

import com.alibaba.fastjson.JSONObject;
import com.sqmy.model.ManagerInfo;
import com.sqmy.service.ManagerService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * Created by YR on 2016/4/15.
 */

@Controller
public class ManagerController {
    final static Logger logger = Logger.getLogger(ManagerController.class);

    @Autowired
    private ManagerService managerService;

    /**
     * 用户登录
     * @param request
     * @return JSONObject
     */
    @RequestMapping("/login")
    public @ResponseBody JSONObject login(HttpSession session,HttpServletRequest request){
        JSONObject jsonObject = new JSONObject();
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        logger.info("账号:"+account+"密码："+password);

        if(account!=null&&!account.trim().equals("")&&password!=null&&!password.trim().equals("")) {
            try {
                ManagerInfo managerInfo = managerService.getManagerInfo(account);

                if (managerInfo.getPassward().equals(password)) {
                    session.setAttribute("managerAccount", account);
                    jsonObject.put("status", "success");
                } else {
                    jsonObject.put("status", "fail");
                }
            }catch (Exception e){
                jsonObject.put("status","fail");
                e.printStackTrace();
            }
        }else{
            jsonObject.put("status","fail");
        }
        return jsonObject;
    }
    /**
     * 获得所有信息
     * @param modelAndView
     * @param httpServletRequest
     * @return
     */
    @RequestMapping("/getAccount")
    public ModelAndView getAccount(ModelAndView modelAndView,HttpServletRequest httpServletRequest){
        String account =  httpServletRequest.getParameter("account");
        if(account!=null&&!account.trim().equals("")) {
            ManagerInfo managerInfo = managerService.getManagerInfo(account);

//           logger.info(managerInfo.getAccount() + "  " + managerInfo.getCreateTime());

            modelAndView.addObject("managerInfo", managerInfo);
        }
        modelAndView.setViewName("manager");
        return modelAndView;
    }

    /**
     * 修改管理员信息
     * @param request
     * @return
     */
    @RequestMapping("/modifyManager")
    public  @ResponseBody JSONObject modifyManager(HttpServletRequest request,String managerId,String managerName,String managerPassword,
                                                    String managerPhoneNum,String managerEmail){
        JSONObject jsonObject = new JSONObject();
        ManagerInfo managerInfo= new ManagerInfo();
        try{
            int id = Integer.parseInt(managerId);
            managerInfo.setId(id);
            managerInfo.setAccount(managerName);
            managerInfo.setPassward(managerPassword);
            managerInfo.setPhoneNumber(managerPhoneNum);
            managerInfo.setEmail(managerEmail);
            managerInfo.setCreateTime(new Date());
            managerService.updateManagerInfo(managerInfo);
            request.getSession().setAttribute("managerAccount",managerInfo.getAccount());

            jsonObject.put("status","success");
        }catch (Exception e){
            logger.error("有异常");
            jsonObject.put("status","success");
        }

        return jsonObject;
    }

}
