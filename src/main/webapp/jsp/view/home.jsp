<%--
  Created by IntelliJ IDEA.
  User: YR
  Date: 2016/4/14
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--标题logo-->
    <link rel="icon" href="/sqmy/jsp/images/log.ico" type="image/x-icon"/>
    <title>社情民意系统</title>
    <link type="text/css" rel="stylesheet" href="/sqmy/jsp/css/style.css" />

    <link href="/sqmy/jsp/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>
    <script src="/sqmy/jsp/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/js/menu.js"></script>
</head>

<body>
<div class="top"></div>
<div id="header">
    <div class="logo">社情民意系统单位管理后台</div>
    <div class="navigation">
        <ul>
            <li>管理员：<span id="managerAccount"><c:out value="${managerAccount}"></c:out></span></li>
            <li></li>
            <li><button type="button" class="btn btn-primary btn-lg">
               <a id="manager_a" url="manager.jsp" href="javascript:void(0)"> <span class="glyphicon glyphicon-user"></span>个人资料</a>
            </button></li>
            <!--<li><a href="">设置</a></li>-->
            <li>
                <button id="logout" type="button" class="btn btn-primary btn-lg">
                    <a href="login.jsp">  <span class="glyphicon glyphicon-lock"></span>退出</a>
                </button>
            </li>
        </ul>
    </div>
</div>
<div id="content">
    <div class="left_menu">
        <ul id="nav_dot">
            <li>
                <h4 class="M1"><span></span>单位管理</h4>
                <div class="list-item none">
                    <a id="unit_manager" class="nav_a" url="unit.jsp" href='##'>单位信息管理</a>
                    <%--<a id="unit_a2" class="nav_a" url="unit.jsp" href='##'>专委会</a>--%>
                    <%--<a id="unit_a3" class="nav_a" href='##'>市州政协</a>--%>
                    <%--<a id="unit_a4" class="nav_a" href='##'>民主党派与工商联</a>--%>
                    <a id="unit_add" class="nav_a" href="##">添加单位</a>
                </div>
            </li>
            <li>
                <h4 class="M10"><span></span>委员管理</h4>
                <div class="list-item none">
                    <a id="member_manager" class="nav_a" url="member.jsp" href='##'>政协委员</a>
                    <%--<a class="nav_a" href=''>省政协委员</a>
                    <a class="nav_a" href=''>全国政协委员</a>--%>
                    <a id="member_add"  class="nav_a" href='##'>添加委员</a>
                </div>
            </li>

            <li>
                <h4 class="M2"><span></span>民意统计</h4>

                <div class="list-item none">
                    <a id="report_unit" class="nav_a" href='##'>单位上报统计</a>
                    <a id="report_member" class="nav_a" href='##'>委员处理统计</a>
                </div>
            </li>
            <li>
                <h4 class="M7"><span></span>账号管理</h4>

                <div class="list-item none">
                    <a id="account_manager" class="nav_a" href='##'>管理账号</a>
                    <a id="account_add" class="nav_a" href="##">添加新账号</a>
                </div>
            </li>
            <li>
                <h4 class="M9"><span></span>投诉举报</h4>

                <div class="list-item none">
                    <a id="complaint" class="nav_a" href='##'>查看内容</a>
                </div>
            </li>
            <li>
                <h4 class="M5"><span></span>政协要闻</h4>

                <div class="list-item none">
                    <a id="lookNews" class="nav_a" href='##'>查看要闻</a>
                    <a id="deployNews" class="nav_a" href='##'>发布要闻</a>
                </div>
            </li>
            <li>
                <h4 class="M6"><span></span>数据库备份</h4>

                <div class="list-item none">
                    <a id="lookDb" class="nav_a" href='##'>查看备份</a>
                    <a id="backupDb" class="nav_a" href='##'>手动备份</a>
                </div>
            </li>
        </ul>
    </div>
    <div class="m-right">
        <div class="right-nav">
            <ul>
                <li><img src="/sqmy/jsp/images/home.png"></li>
                <li style="margin-left:25px;margin-top: 10px;font-size: 16px;font-weight: bold;">
                    您当前的位置：<span id="span_parent" style="font-size: 16px;font-weight: bold">首页</span><span id="span_children" style="font-size: 16px;font-weight: bold"></span>
                </li>
                <!--<li><a href="#">系统公告</a></li>
                <li>></li>
                <li><a href="#">最新公告</a></li>-->
            </ul>
        </div>
        <div class="main" id="main">

            <iframe id="iframe" src="bg.jsp" frameBorder="0" width="100%" scrolling="no" height="100%"></iframe>

        </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2016 版权所有 西电毕设06组 尹榕</p></div>
<script>navList(12);

    $(".nav_a").click(function(){
        $("#span_parent").text($(this).parent("div").prev("h4").text());
        $("#span_children").text("->"+$(this).text());
    });

    $(function(){
        $("#manager_a").click(
                function(){
//                    $.post("/sqmy/modifyManager.do",{"account":$("#managerAccount").text()},function(data){
//                        $("#main").load("/sqmy/getAccount.do",{"account":$("#managerAccount").text()});
                    $("#iframe").attr("src", "/sqmy/getAccount.do?"+"&account="+$("#managerAccount").text());
                }
        );
        $("#unit_manager").click(
                function(){
//                    $("#main").load("/sqmy/getAllUnits.do");
                    $("#iframe").attr("src","/sqmy/getAllUnits.do");
                }
        );
        $("#unit_add").click(
                function(){
                    $("#iframe").attr("src","/sqmy/loadAddUnit.do");
//                    $("#main").load("./addUnit.jsp");
                }
        );

        $("#member_manager").click(
                function(){
//                    $("#main").load("/sqmy/getAllMembers.do");
                    $("#iframe").attr("src","/sqmy/getAllMembers.do");
                }
        );
        $("#member_add").click(
                function(){
//                    $("#main").load("./addMember.jsp");
                    $("#iframe").attr("src","/sqmy/loadAddMember.do");
                }
        );
        $("#account_manager").click(
                function(){
//                    $("#main").load("/sqmy/getAllAccounts.do");
                    $("#iframe").attr("src","/sqmy/getAllAccounts.do");
                }
        );
        $("#account_add").click(
                function(){
//                        $("#main").load("./addAccount.jsp");
                    $("#iframe").attr("src","/sqmy/loadAddAccount.do");
                }
        );
        $("#report_unit").click(
                function(){
                    $("#iframe").attr("src","/sqmy/reportUnit.do");
                }
        );
        $("#report_member").click(
                function(){
                    $("#iframe").attr("src","/sqmy/reportMember.do");
                }
        );
        $("#complaint").click(
                function(){
                    $("#iframe").attr("src","/sqmy/lookComplaint.do");
                }
        );

        $("#lookNews").click(
                function(){
                    $("#iframe").attr("src","/sqmy/lookNews.do");
                }
        );
        $("#deployNews").click(
                function(){
                    $("#iframe").attr("src","/sqmy/deployNews.do");
                }
        );

        $("#lookDb").click(
                function(){
                    $("#iframe").attr("src","/sqmy/lookDb.do");
                }
        );
        $("#backupDb").click(
                function(){
//                    $("#iframe").attr("src","/sqmy/backupDb.do");
                    $.post("/sqmy/backupDb.do",function(data){
                        if(data.status=="success"){

                            alert("备份数据库成功");
                            $("#iframe").attr("src","/sqmy/lookDb.do");
                        }
                    });
                }
        );

    });

</script>
</body>
</html>

