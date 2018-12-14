package com.gdufe.controller;

import com.gdufe.entity.NewsComment;
import com.gdufe.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping("/queryAll/{newsid}")
    public String queryAll(@PathVariable("newsid") int newsId, Model model){
        List<NewsComment> newsCommentList = commentService.queryAll(newsId);
        System.out.println(newsCommentList);
        model.addAttribute("newsCommentList", newsCommentList);
//        model.addAttribute("newsid",newsId);
        return "comment";
    }

    @RequestMapping("/add/{newsid}")
    public String goToAddComment(@PathVariable("newsid") int newsId, Model model){
        model.addAttribute("newsId", newsId);
        return "add";
    }

    @RequestMapping("/addTo")
    public String addComment(NewsComment newsComment, Model model){
        Boolean addFlag = commentService.addComment(newsComment);
        model.addAttribute("addFlag", addFlag);
        List<NewsComment> newsCommentList = commentService.queryAll(newsComment.getNewsDetail().getId());
        model.addAttribute("newsCommentList", newsCommentList);
        return "comment";
    }

    @RequestMapping("/del/{id}/{newsid}")
    public String delCommentById(@PathVariable("id") int id, @PathVariable("newsid") int newsId, Model model){
        Boolean delFlag = commentService.delCommentByCommentId(id);
        model.addAttribute("delFlag", delFlag);
        List<NewsComment> newsCommentList = commentService.queryAll(newsId);
        model.addAttribute("newsCommentList", newsCommentList);
        return "comment";
    }
}
