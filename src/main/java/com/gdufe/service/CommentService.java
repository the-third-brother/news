package com.gdufe.service;

import com.gdufe.entity.NewsComment;

import java.util.List;

public interface CommentService {
    List<NewsComment> queryAll(int newsId);

    Boolean addComment(NewsComment newsComment);

    Boolean delCommentByNewsId(int newsId);

    Boolean delCommentByCommentId(int id);
}
