package com.gdufe.service;

import com.gdufe.entity.NewsDetail;

import java.util.List;

public interface NewsService {
    List<NewsDetail> queryAllNews();

    List<NewsDetail> queryByTitle(String title);

    Boolean delNewsById(int newsId);
}
