<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="/sqmy/jsp/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>
        <script src="/sqmy/jsp/bootstrap/js/bootstrap.min.js"></script>
        <script src="/sqmy/jsp/js/jquery/jquery.validate.js"></script>
        <script src="/sqmy/jsp/js/jquery/messages_zh.js"></script>

        <style type="text/css">

            /*.checked {
                padding-left: 20px;
                padding-bottom: 10px;
                /!*background:url("/sqmy/jsp/image3/checked.gif") no-repeat 0px 0px;*!/
            }*/

            #mainDiv{
                background:#575765 ;
                width: 100%;
                height:800px;
            }
            #managerDiv{
                position: absolute;
                width: 400px;
                height: 480px;
                margin-left: 360px;
                margin-top:20px ;
                background: #5e5e5e;

                border: 5px solid #dedede;
                -moz-border-radius: 15px;      /* Gecko browsers */
                -webkit-border-radius: 15px;   /* Webkit browsers */
                border-radius:15px;
            }
            #managerDiv form div input{
                margin-left: 50px;
                margin-right: 50px;
            }
            .spanInfo{
                margin-left: 50px;
                margin-right: 50px;
                font-family: Consolas;
                font-size: 14px;
                font-weight: bold;
                color: white;
            }
            #modify{
                margin-top: 30px;
                margin-left: 80px;
            }
            #submit{
                margin-top: 30px;
                margin-left: 130px;
            }

           .error{
               padding-left: 16px;

               padding-bottom: 2px;

               font-weight: bold;

               color: #EA5200;
               /*background: url("/sqmy/jsp/image3/unchecked.gif") no-repeat 0px 0px;*/
           }

        </style>
    </head>
    <body>
        <div id="mainDiv">
            <div id="managerDiv">
                <form id="managerForm"  action="/sqmy/modifyAccount.do" class="form" method="post" role="form" >
                    <div id="errMsg"></div>
                    <fieldset disabled id="manager_fieldset"> <!--不可编辑-->
                    <div class="form-group ">
                        <!--<label class="sr-only" for="managerId">id</label>-->
                         <input type="hidden" class="form-control" id="managerId" name="managerId" value="${managerInfo.id}"><!--placeholder="请输入名称"-->
                    </div>
                    <div class="form-group ">
                        <!--<label class="control-label" for="managerName">账号:</label>-->
                        <span class="spanInfo">用户名：</span>
                        <input type="text" class="form-control" id="managerName" name="managerName" style="width: 300px" value="${managerInfo.account}">
                    </div>
                    <div class="form-group ">
                        <span class="spanInfo">密码：</span>
                        <input type="password" class="form-control" id="managerPassword" name="managerPassword" style="width: 300px" value="${managerInfo.passward}">
                    </div>
                        <div class="form-group ">
                            <!--<label class="control-label"  for="managerPassword">密码:</label>-->
                            <span class="spanInfo" id="insureSpan" style="display: none">确认密码：</span>
                            <input type="password" class="form-control" id="insurePassword" name="insurePassword"  style="width: 300px;display: none">
                        </div>
                    <div class="form-group">
                        <!--<label class="control-label" for="managerPhoneNum">电话号码:</label>-->
                        <span class="spanInfo">电话号码：</span>
                        <input type="text" class="form-control" id="managerPhoneNum"  name="managerPhoneNum" style="width: 300px" value="${managerInfo.phoneNumber}">
                    </div>
                    <div class="form-group">
                        <!--<label class="control-label" for="managerEmail">邮箱:</label>-->
                        <span class="spanInfo">邮箱：</span>
                        <input type="text" class="form-control" id="managerEmail" name="managerEmail" style="width: 300px" value="${managerInfo.email}">
                    </div>
                    </fieldset>
                    <button type="button" id="modify" class="btn btn-info" >修改</button>
                    <button type="submit" id="submit" class="btn btn-info" >提交</button>
                </form>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        //可编辑
            $("#modify").click(function(){
                $("#manager_fieldset").removeAttr("disabled");
                //添加确认密码

                $("#insurePassword").css("display","block");
                $("#insureSpan").css("display","block");

            });


       //表单验证
        /*$.validator.setDefaults({
            debug:true,
            submitHandler: function() {
//                alert("提交事件!");
            }
        });*/
        $(document).ready(function() {
        // 在键盘按下并释放及提交后验证提交表单


            $("#managerForm").validate({

                errorPlacement:function(error,element) {
                    element.prev().append(error);
                },

                success:"checked",
                rules: {
                    managerName: {
                        required: true,
                        minlength: 3,
                        maxlength:20,
                    },
                    managerPassword: {
                        required: true,
                        minlength: 5,
                        maxlength:20,
                    },
                    insurePassword:{
                        required:true,
                        isEnsurePassword:true,
                    },
                    managerPhoneNum:{
                        required:true,
                        isPhone:true,
                        maxlength:15,
                    },
                    managerEmail: {
                        required: true,
                        email: true,
                        maxlength:30,
                    },
                },
                messages: {
                    managerName: {
                        required: "请输入用户名",
                        minlength: "长度为3-20个字符"
                    },
                    managerPassword: {
                        required: "请输入密码",
                        minlength: "密码长度为5-20个字符"
                    },
                    managerEmail: "请输入正确的邮箱",
                    managerPhoneNum:"请输入正确的电话号码",
                },

                submitHandler:function(){
//                    $("#submit").click(function(){
                        $.post("/sqmy/modifyManager.do",{"managerId":$("#managerId").val(),"managerName":$("#managerName").val(),
                            "managerPassword":$("#managerPassword").val(),"managerPhoneNum":$("#managerPhoneNum").val(),"managerEmail":$("#managerEmail").val()},function(data){
                            if(data.status=="success"){
                                alert("修改账号成功");
                                window.location.href="/sqmy/getAccount.do?"+"&account="+$("#managerName").val();
//                    window.location.reload();
                            }else{
                                alert("修改账号失败");
                            }
                        });
//                    });
                },
            });
        });
            // 联系电话(手机/电话皆可)验证
            jQuery.validator.addMethod("isPhone", function(value,element) {
                var length = value.length;
                var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;
                var tel = /^\d{3,4}-?\d{7,9}$/;
                return this.optional(element) || (tel.test(value) || mobile.test(value));

            }, "请正确填写您的联系电话");
            jQuery.validator.addMethod("isEnsurePassword", function(value,element) {
               return  $("#managerPassword").val()==$(element).val();
            }, "两次密码不相同，请重新输入");

    </script>
</html>