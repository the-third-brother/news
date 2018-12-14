package com.gdufe.service.impl;

import com.gdufe.entity.NewsComment;
import com.gdufe.mapper.CommentMapper;
import com.gdufe.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;
    @Override
    public List<NewsComment> queryAll(int newsId) {
        return commentMapper.queryAll(newsId);
    }

    @Override
    public Boolean addComment(NewsComment newsComment) {
        newsComment.setCreateDate(new Date());
        int row = commentMapper.addComment(newsComment);
        return row==1?true:false;
    }

    @Override
    public Boolean delCommentByNewsId(int newsId) {
        int row = commentMapper.delCommentByNewsId(newsId);
        return row==1?true:false;
    }

    @Override
    public Boolean delCommentByCommentId(int id) {
        int row = commentMapper.delCommentByCommentId(id);
        return row==1?true:false;
    }


}
