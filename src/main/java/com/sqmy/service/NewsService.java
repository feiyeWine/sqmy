package com.sqmy.service;

import com.sqmy.model.News;

import java.util.List;

/**
 * Created by YR on 2016/4/19.
 */
public interface NewsService {
    List<News> getAllNews();
    void addNews(News news);
    News getNew(int id);
}
