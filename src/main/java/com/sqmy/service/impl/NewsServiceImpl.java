package com.sqmy.service.impl;

import com.sqmy.dao.NewsMapper;
import com.sqmy.model.News;
import com.sqmy.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by YR on 2016/4/19.
 */

@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    private NewsMapper newsMapper;

    @Override
    public List<News> getAllNews() {
        return newsMapper.getAllNews();
    }

    @Override
    public void addNews(News news) {
        newsMapper.insertSelective(news);
    }

    @Override
    public News getNew(int id) {
        return newsMapper.selectByPrimaryKey(id);
    }
}
