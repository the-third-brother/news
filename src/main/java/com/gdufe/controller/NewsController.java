package com.gdufe.controller;

import com.gdufe.entity.NewsDetail;
import com.gdufe.service.CommentService;
import com.gdufe.service.NewsService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private NewsService newsService;
    @Autowired
    private CommentService commentService;

    @RequestMapping("/query")
    public String queryAllNews(Model model){
        List<NewsDetail> newsDetailList = newsService.queryAllNews();
        model.addAttribute("newsDetailList", newsDetailList);
        return "news";
    }

    @RequestMapping("/queryByTitle")
    public String queryByTitle(@RequestParam String title, Model model){
        List<NewsDetail> newsDetailList = newsService.queryByTitle(title);
        model.addAttribute("newsDetailList", newsDetailList);
        model.addAttribute("title", title);
        return "news";
    }

    @RequestMapping("/del/{newsid}")
    public String del(@PathVariable("newsid") int newsId, Model model){
        Boolean delNewsFlag = newsService.delNewsById(newsId);
        Boolean delCommentFlag = commentService.delCommentByNewsId(newsId);
        if (!delCommentFlag){
            delNewsFlag = false;
        }
        model.addAttribute("delNewsFlag", delNewsFlag);
        List<NewsDetail> newsDetailList = newsService.queryAllNews();
        model.addAttribute("newsDetailList", newsDetailList);
        return "news";
    }
}
