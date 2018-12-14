package com.gdufe.service.impl;

import com.gdufe.entity.NewsDetail;
import com.gdufe.mapper.NewsMapper;
import com.gdufe.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsMapper newsMapper;
    @Override
    public List<NewsDetail> queryAllNews() {
        return newsMapper.queryAllNews();
    }

    @Override
    public List<NewsDetail> queryByTitle(String title) {
        return newsMapper.queryByTitle(title);
    }

    @Override
    public Boolean delNewsById(int newsId) {
        int row = newsMapper.delNewsById(newsId);
        return row==1?true:false;
    }
}
