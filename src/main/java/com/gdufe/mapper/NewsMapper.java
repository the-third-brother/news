package com.gdufe.mapper;

import com.gdufe.entity.NewsDetail;

import java.util.List;

public interface NewsMapper {
    List<NewsDetail> queryAllNews();

    List<NewsDetail> queryByTitle(String title);

    int delNewsById(int newsId);
}
