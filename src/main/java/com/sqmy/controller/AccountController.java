package com.sqmy.controller;

import com.alibaba.fastjson.JSONObject;
import com.sqmy.model.AccountsInfo;
import com.sqmy.service.AccountService;
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
public class AccountController {

    @Autowired
    private AccountService accountService;

    @RequestMapping("/loadAddAccount")
    public String loadAddAccount(){
        return "addAccount";
    }

    /**
     *
     * @param modelAndView
     * @return
     */
    @RequestMapping("/getAllAccounts")
    public ModelAndView getAllAccounts(ModelAndView modelAndView){
        List<AccountsInfo> accounts = new ArrayList<>();
        try {
            accounts = accountService.getAccounts();
            modelAndView.addObject("accounts",accounts);
            modelAndView.setViewName("account");
        }catch (Exception e){
            e.printStackTrace();
        }

        return modelAndView;
    }

    /**
     *
     * @param id
     * @param userAccount
     * @param userNumber
     * @param userType
     * @param userAuthority
     * @param userPassword
     * @return
     */
    @RequestMapping("/modifyAccount")
    public @ResponseBody JSONObject modifyAccount(String id,String userAccount,String userNumber,String userType,String userAuthority,
                                                 String userPassword){
        JSONObject jsonObject = new JSONObject();
        AccountsInfo accountsInfo = new AccountsInfo();
        try{
            accountsInfo.setId(Integer.parseInt(id));
            accountsInfo.setAccountNum(userAccount);
            if(userType.equals("单位")){
                accountsInfo.setUnitId(userNumber);
            }else if(userType.equals("政协委员")){
                accountsInfo.setCppccId(userNumber);
            }
            if(userPassword!=null&&!userPassword.trim().equals("")) {
                accountsInfo.setPassword(userPassword);
            }
            accountsInfo.setAuthority(userAuthority);
            accountsInfo.setCreateTime(new Date());
            accountService.updateAccount(accountsInfo);

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
    @RequestMapping("/deleteAccount")
    public @ResponseBody JSONObject deleteAccount(String id){
        JSONObject jsonObject = new JSONObject();
        try{
            accountService.deleteAccount(Integer.parseInt(id));
            jsonObject.put("status","success");
        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }
        return jsonObject;
    }

    /**
     *
     * @param userAccount
     * @param userNumber
     * @param userType
     * @param userAuthority
     * @param userPassword
     * @return
     */
    @RequestMapping("/addAccount")
    public @ResponseBody JSONObject addAccount(String userAccount,String userNumber,String userType,String userAuthority,
                                               String userPassword){
        JSONObject jsonObject = new JSONObject();
        AccountsInfo accountsInfo = new AccountsInfo();
        try {
            accountsInfo.setAccountNum(userAccount.trim());
            if(userType.equals("单位")){
                accountsInfo.setUnitId(userNumber.trim());
            }else if(userType.equals("政协委员")){
                accountsInfo.setCppccId(userNumber.trim());
            }
            accountsInfo.setPassword(userPassword);
            accountsInfo.setAuthority(userAuthority);
            accountsInfo.setCreateTime(new Date());
            accountService.addAccount(accountsInfo);

            jsonObject.put("status","success");
        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }

        return jsonObject;
    }
}
