<%--
  Created by IntelliJ IDEA.
  User: YR
  Date: 2016/4/19
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>bootstrap 滚动播放 </title>

    <link href="/sqmy/jsp//bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="/sqmy/jsp//js/jquery/jquery-1.11.2.min.js"></script>
    <script src="/sqmy/jsp//bootstrap/js/bootstrap.min.js"></script>
</head>
<div id="root">
    <div id="dd" >
        <!-- 轮播测试源实例-->
        <div id="myCarousel" class="carousel slide" style="width:1100px;height: 600px;">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="/sqmy/jsp//image3/bg1.jpg" alt="First slide"  style="width:1100px;height: 520px;">
                    <div class="carousel-caption"></div>
                </div>
                <div class="item">
                    <img src="/sqmy/jsp//image3/bg2.jpg" alt="Second slide" style="width:1100px;height: 520px;">
                    <div class="carousel-caption"></div>
                </div>
                <div class="item">
                    <img src="/sqmy/jsp//image3/bg3.jpg" alt="Third slide" style="width:1100px;height: 520px;">
                    <div class="carousel-caption"></div>
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="carousel-control left" href="#myCarousel"
               data-slide="prev"></a>
            <a class="carousel-control right" href="#myCarousel"
               data-slide="next"></a>
        </div>
    </div>
</div>
</body>
<script>
    $(function(){
        $('#myCarousel').carousel({
            interval:2000,
            wrap:true,
        });
    });
</script>
</html>
