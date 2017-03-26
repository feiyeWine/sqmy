<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="/sqmy/jsp/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="/sqmy/jsp/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>
    <style type="text/css">
        #mainDiv{
            background:#575765 ;
            width: 100%;
            height:800px;
        }
        .newsLabel{
            font-size: 20px;
            color: #770088;
        }

    </style>
</head>
<body>
    <div id="mainDiv">


        <form action="" id="newsForm" name="newsForm" method="get">

            <label class="newsLabel">请填写标题：</label>
            <input type="text" class="form-control" id="newsTitle" name="newsTitle" style="width: 400px"/>
            <label class="newsLabel">请在下方填写发布内容：</label>
            <textarea id="newsContent" name="newsContent"></textarea>
            <script type="text/javascript">CKEDITOR.replace("newsContent",{
                uiColor: '#CCEAEE'
            });</script>

            <!--<input id="newsInput" name="newsInput" style="display: block"/>-->
            <button type="button" class="btn-info" id="reset" style="margin-top: 30px;margin-left: 400px;">重置</button>
            <button type="button" class="btn-info" id="submit" style="margin-top: 30px;margin-left: 200px;">提交</button>
        </form>
        <p id="test"></p>
    </div>
</body>
    <script type="text/javascript">


        $("#reset").click(function(){
//          $("#newsInput").val=$("#test").html( CKEDITOR.instances.newsContent.getData());
//            alert($("#test").text());
            CKEDITOR.instances.newsContent.setData("");

        });

        $("#submit").click(function(){
            if($("#newsTitle").val()==null||$("#newsTitle").val()==""){
                alert("标题不能为空！");
            }else{
                $.post("/sqmy/addNew.do",{"title":$("#newsTitle").val(),"content":CKEDITOR.instances.newsContent.getData()},
                        function(data){
                        if(data.status=="success"){
                            alert("发布成功");
                        }else{
                            alert("发布失败");
                        }
                });
            }
        });
    </script>
</html>