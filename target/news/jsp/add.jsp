<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11/011
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="${ctx}/comment/addTo">
        <input type="hidden" name="newsDetail.id" value="${newsId}">
        <table border="1">
            <thead>
            <tr>
                <th colspan="2">添加评论</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>评论内容</td>
                <td>
                    <input type="textarea" name="content">
                </td>
            </tr>
            <tr>
                <td>评论人</td>
                <td>
                    <input type="text" name="author">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="提交">
                    <a href="javascript:history.go(-1)">返回</a>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
