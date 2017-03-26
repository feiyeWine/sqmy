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
        <th>备份名称</th>
        <th>备份时间</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${dbs}" var="db">
    <tr>
        <td>${db.id}</td>
        <td>${db.name}</td>
        <td>
            <fmt:formatDate value="${db.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>