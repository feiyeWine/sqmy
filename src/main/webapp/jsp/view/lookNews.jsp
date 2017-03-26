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
    <%--<script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>--%>

    <link href="/sqmy/jsp/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<table id="example" class="display table-bordered" cellspacing="0" width="100%">
    <thead>
    <tr>
    <th>序号</th>
    <th>标题</th>
    <th>内容</th>
    <th>创建时间</th>
</tr>
    </thead>

    <tbody>
    <c:forEach items="${news}" var="news">
        <tr>
            <td>${news.id}</td>
            <td>${news.title}</td>
            <td><a class="lookNew" href="##">查看内容</a></td>
            <td>
                <fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
    <script type="text/javascript">
        $(".lookNew").click(function(){
            var $td = $(this).parents("tr").children("td");
            $.post("/sqmy/getNew.do",{"id":$td.eq(0).text()},function(data){
                if(data.status!="fail"){
//                    window.localation="http://localhost:8080:/sqmy/jsp/view/findNew.jsp";
                    window.open("/sqmy/jsp/view/findNew.jsp");
//                    window.href="/sqmy/jsp/view/findNew.jsp";

                }
            });
        });
    </script>
</html>