package com.gdufe.mapper;

import com.gdufe.entity.NewsComment;

import java.util.List;

public interface CommentMapper {
    List<NewsComment> queryAll(int newsId);

    int addComment(NewsComment newsComment);

    int delCommentByNewsId(int newsId);

    int delCommentByCommentId(int id);
}
