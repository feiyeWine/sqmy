package com.sqmy.controller;

import com.alibaba.fastjson.JSONObject;
import com.sqmy.model.ComplaintsReport;
import com.sqmy.service.ComplaintService;
import com.sqmy.untils.UploadFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */
@Controller
public class ComplaintController {
    @Autowired
    private ComplaintService complaintService;

    @RequestMapping("/lookComplaint")
    public ModelAndView complaint(ModelAndView modelAndView){
        List<ComplaintsReport> complaintsReports = new ArrayList<>();
        try {
            complaintsReports = complaintService.getAllComplaints();
            modelAndView.addObject("complaints",complaintsReports);
            modelAndView.setViewName("lookComplaint");
        }catch (Exception e){
            e.printStackTrace();
        }

        return modelAndView;
    }

    @RequestMapping("/addComplaint")
    public
    ModelAndView addComplaint(HttpServletRequest request,ModelAndView modelAndView, String username, String idcard, String userSex, String userJob, String userPhone,
                              String userAddress, String userContent, String unit, @RequestParam MultipartFile attachment){
        JSONObject jsonObject = new JSONObject();
        ComplaintsReport complaintsReport = new ComplaintsReport();
        String path = request.getSession().getServletContext().getRealPath("")+"/jsp/attachments/";
//        String path="E:\\JAVA\\IntelliJ_IDEA\\mymaven\\sqmy\\src\\main\\webapp\\jsp\\attachments\\";
        boolean flag = true;
        String status = "";
        try{
            complaintsReport.setName(username);
            complaintsReport.setIdcard(idcard);
            complaintsReport.setSex(userSex);
            if(userJob!=null&&!userJob.equals("")) {
                complaintsReport.setJob(userJob);
            }
            complaintsReport.setPhoneNum(userPhone);
            complaintsReport.setAddress(userAddress);
            if(userContent!=null&&!userContent.equals("")) {
                complaintsReport.setContent(userContent);
            }
            complaintsReport.setUnitName(unit);
            if(attachment!=null&&!attachment.equals("")){
                String name = UploadFile.upload(attachment,path);
                if(name!=null) {
                    complaintsReport.setAttachment(name);
                }else{
                    flag = false;
                    status = "fail";
                }
            }
            if(flag) {
                complaintService.insertComplaint(complaintsReport);
                status = "success";
                jsonObject.put("status", "success");
            }
        }catch (Exception e){
            jsonObject.put("status","fail");
            status="fail";
            e.printStackTrace();
        }
        modelAndView.addObject("status",status);
        modelAndView.setViewName("complaint");
        return modelAndView;
    }
}
