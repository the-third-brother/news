<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11/011
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${ctx}/news/queryByTitle">
        <span style="font-size: 26px">新闻标题</span>
        <input type="text" name="title" value="${title}">
        <input type="submit" value="查询">
    </form>
    <table border="1">
        <thead>
            <tr>
                <th colspan="6">新闻列表</th>
            </tr>
            <tr>
                <td>新闻编号</td>
                <td>新闻标题</td>
                <td>新闻摘要</td>
                <td>作者</td>
                <td>创建时间</td>
                <td>操作</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${newsDetailList}" var="news">
                <tr>
                    <td>${news.id}</td>
                    <td>${news.title}</td>
                    <td>${news.summary}</td>
                    <td>${news.author}</td>
                    <td>${news.createDate}</td>
                    <td>
                        <a href="${ctx}/comment/queryAll/${news.id}">查看评论</a>
                        <a href="${ctx}/comment/add/${news.id}">添加评论</a>
                        <a href="${ctx}/news/del/${news.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <c:if test="${delNewsFlag eq true}"><span style="color: green">删除成功</span></c:if>
                <c:if test="${delNewsFlag eq false}"><span style="color: red">删除失败</span></c:if>
            </tr>
        </tbody>
    </table>
</body>
</html>
