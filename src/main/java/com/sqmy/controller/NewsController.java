package com.sqmy.controller;

import com.alibaba.fastjson.JSONObject;
import com.sqmy.model.News;
import com.sqmy.service.NewsService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */
@Controller
public class NewsController {
    static final Logger LOGGER = Logger.getLogger(NewsController.class);

    @Autowired
    private NewsService newsService;
    @RequestMapping("/deployNews")
    public String deployNews(){

        return "news";
    }

    @RequestMapping("/lookNews")
    public ModelAndView lookNews(ModelAndView modelAndView){
        List<News> news  = new ArrayList<News>();
        try{
           news = newsService.getAllNews();
            modelAndView.addObject("news",news);
            modelAndView.setViewName("lookNews");
        }catch (Exception e){
            e.printStackTrace();
        }
        return modelAndView;
    }
    /**
     *
     * @param title
     * @param content
     * @return
     */
    @RequestMapping("/addNew")
    public @ResponseBody
    JSONObject addNews(String title, String content){
        JSONObject jsonObject = new JSONObject();

        News news = new News();
        try{
            news.setTitle(title);
            news.setContent(content);
            news.setCreateTime(new Date());
            newsService.addNews(news);
            jsonObject.put("status","success");
        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }

        return jsonObject;
    }

    @RequestMapping("/getNew")
    public @ResponseBody JSONObject getNew(HttpServletRequest request,String id){
        JSONObject jsonObject  = new JSONObject();

        String path = request.getSession().getServletContext().getRealPath("")+"/jsp/view/findNew.jsp";
        LOGGER.info("文件路径："+path);

        News news = new News();
        File file = null;
        OutputStreamWriter outputStreamWriter=null;

        String data = "<%@page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n" +
               "<%@taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>"+"\r\n"+"<link rel=\"icon\" href=\"/sqmy/jsp/images/log.ico\" type=\"image/x-icon\"/>"+"\r\n";

//            String data = "<meta charset=\"utf-8\">"+"\r\n";
        try {
            file = new File(path);
            news = newsService.getNew(Integer.parseInt(id));
            if(!file.exists()){
                file.createNewFile();
                LOGGER.info("文件路径："+file.getAbsolutePath());
            }
            LOGGER.info("文件路径："+file.getAbsolutePath());
            if(file.exists()){
                outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file),"utf-8");
                outputStreamWriter.write(data);
                outputStreamWriter.write(news.getContent());

                jsonObject.put("status","redirect:/sqmy/jsp/view/findNew.jsp");
            }

        }catch (Exception e){
            jsonObject.put("status","fail");
            e.printStackTrace();
        }finally {
            if(outputStreamWriter!=null){
                try {
                    outputStreamWriter.close();
                } catch (IOException e) {

                }
            }
        }

        return jsonObject;
    }

    public static void main(String[] args) {

    }
}
