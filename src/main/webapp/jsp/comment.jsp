<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11/011
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1">
        <a href="${ctx}/news/query">返回新闻列表</a>
        <thead>
            <tr>
                <th>评论列表</th>
            </tr>
            <tr>
                <td>评论编号</td>
                <td>评论内容</td>
                <td>评论人</td>
                <td>评论时间</td>
                <td>操作</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${newsCommentList}" var="comment">
                <tr>
                    <td>${comment.id}</td>
                    <td>${comment.content}</td>
                    <td>${comment.author}</td>
                    <td>${comment.createDate}</td>
                    <td>
                        <a href="${ctx}/comment/del/${comment.id}/${comment.newsDetail.id}">删除评论</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <c:if test="${addFlag eq true}"><span style="color: green">添加成功</span></c:if>
                <c:if test="${addFlag eq false}"><span style="color: red">添加失败</span></c:if>
                <c:if test="${delFlag eq true}"><span style="color: green">删除成功</span></c:if>
                <c:if test="${delFlag eq false}"><span style="color: red">删除失败</span></c:if>
            </tr>
        </tbody>
    </table>
</body>
</html>
