
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
                height: 500px;
                margin-left: 360px;
                margin-top:15px ;
                background: #5e5e5e;

                border: 5px solid #dedede;
                -moz-border-radius: 15px;      /* Gecko browsers */
                -webkit-border-radius: 15px;   /* Webkit browsers */
                border-radius:15px;
            }
            #managerDiv form div input{
                margin-left: 50px;
                margin-right:50px;
            }
            #unitClass,#unitType{
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

            #submit{
                margin-left: 160px;
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
                <form id="unitForm"  action="#" class="form" method="post" role="form" >
                    <div id="errMsg"></div>
                    <fieldset  id="manager_fieldset"> <!--不可编辑-->
                    <div class="form-group ">
                         <input type="hidden" class="form-control" id="unitId" name="unitId"><!--placeholder="请输入名称"-->
                    </div>
                    <div class="form-group ">
                        <span class="spanInfo">单位编号：</span>
                        <input type="text" class="form-control" id="unitNumber" name="unitNumber" style="width: 300px">
                    </div>
                    <div class="form-group ">
                        <span class="spanInfo">单位名称：</span>
                        <input type="text" class="form-control" id="unitName" name="unitName" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <span class="spanInfo">电话号码：</span>
                        <input type="text" class="form-control" id="unitPhoneNum"  name="unitPhoneNum" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <span class="spanInfo">邮箱：</span>
                        <input type="text" class="form-control" id="unitEmail" name="unitEmail" style="width: 300px">
                    </div>
                        <div class="form-group">
                            <span class="spanInfo">单位类别：</span>
                            <select class="form-control" id="unitType" name="unitType" style="width: 300px">
                                <option>直报点</option>
                                <option>专委会</option>
                                <option>市州政协</option>
                                <option>民主党派与工商联</option>
                            </select>
                            <div class="form-group">
                                <span class="spanInfo">单位级别：</span>
                                <select class="form-control" id="unitClass" name="unitClass" style="width: 300px">
                                    <option>一级</option>
                                    <option>二级</option>
                                    <option>三级</option>
                                 </select>
                            </div>
                        </div>
                    </fieldset>
                    <button type="button" id="submit" class="btn btn-info" >确认添加</button>
                </form>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        //可编辑
            $("#modify").click(function(){
                $("#manager_fieldset").removeAttr("disabled");
            });

        $("#submit").click(function(){
            $.post("/sqmy/addUnit.do",{"unitId":$("#unitId").val(),"unitNumber":$("#unitNumber").val(),"unitName":$("#unitName").val(),
                "unitPhoneNum":$("#unitPhoneNum").val(),"unitEmail":$("#unitEmail").val(),"unitType":$("#unitType").val(),"unitClass":$("#unitClass").val()
            },function(data){
                if(data.status=="success"){
                    alert("添加成功");
                    window.location.reload();
                }else{
                    alert("添加失败");
                }
            });
        });


        //表单验证
        /*$.validator.setDefaults({
            debug:true,
            submitHandler: function() {
//                alert("提交事件!");
            }
        });*/
        $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单


            $("#unitForm").validate({

                errorPlacement:function(error,element) {
                    element.prev().append(error);
                },

                success:"checked",
                rules: {
                    unitName: {
                        required: true,
                        minlength: 5,
                        maxlength:30,
                    },
                    unitNumber: {
                        required: true,
                        minlength: 3,
                        maxlength:20,
                    },

                    unitPhoneNum:{
                        required:true,
                        isPhone:true,
                        maxlength:15,
                    },
                    unitEmail: {
                        required: true,
                        email: true,
                        maxlength:30,
                    },
                },
                messages: {
                    unitName: {
                        required: "单位名称不能为空",
                        minlength: "长度为5-30个字符"
                    },
                    unitNumber: {
                        required: "单位编号不能为空",
                        minlength: "长度为3-20个字符"
                    },
                    unitEmail: "请输入正确的邮箱",
                    unitPhoneNum:"请输入正确的电话号码",
                }
            });
        });
            // 联系电话(手机/电话皆可)验证
            jQuery.validator.addMethod("isPhone", function(value,element) {
                var length = value.length;
                var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;
                var tel = /^\d{3,4}-?\d{7,9}$/;
                return this.optional(element) || (tel.test(value) || mobile.test(value));

            }, "请正确填写您的联系电话");

    </script>
</html>