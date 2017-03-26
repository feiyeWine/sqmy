<%--
  Created by IntelliJ IDEA.
  User: YR
  Date: 2016/4/19
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/sqmy/jsp/dataTables/media/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="/sqmy/jsp/dataTables/media/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="/sqmy/jsp/dataTables/media/css/jquery.dataTables_themeroller.css">
    <script type="text/javascript" src="/sqmy/jsp/dataTables/media/js/jquery.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/dataTables/media/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/dataTables/media/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/js/datatables.js"></script>

    <link href="/sqmy/jsp/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<table id="example" class="display table-bordered" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>序号</th>
        <th>姓名</th>
        <th>身份证号</th>
        <th>性别</th>
        <th>电话号码</th>
        <th>职业</th>
        <th>地址</th>
        <th>举报单位</th>
        <th>内容</th>
        <th>附件</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${complaints}" var="complaint">
        <tr>
            <td>${complaint.id}</td>
            <td>${complaint.name}</td>
            <td>${complaint.idcard}</td>
            <td>${complaint.sex}</td>
            <td>${complaint.phoneNum}</td>
            <td>${complaint.job}</td>
            <td>${complaint.address}</td>
            <td>${complaint.unitName}</td>
            <td>${complaint.content}</td>
            <td>${complaint.attachment}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
