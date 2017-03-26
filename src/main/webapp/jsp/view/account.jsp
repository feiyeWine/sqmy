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
    <script src="/sqmy/jsp/js/jquery/jquery.validate.js"></script>
    <script src="/sqmy/jsp/js/jquery/messages_zh.js"></script>

    <link href="/sqmy/jsp/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <script src="/sqmy/jsp/bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
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
<table id="example" class="display table-bordered" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>序号</th>
        <th>用户账号</th>
        <th>用户身份</th>
        <th>用户类型</th>
        <th>权限</th>
        <th>创建时间</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${accounts}" var="account">
    <tr>
        <td>${account.id}</td>
        <td>${account.accountNum}</td>

            <c:choose>
                <c:when test="${not empty account.cppccId}">
                    <td><c:out value="${account.cppccId}"></c:out></td>
                    <td>政协委员</td>
                </c:when>
                <c:otherwise>
                    <td><c:out value="${account.unitId}"></c:out> </td>
                    <td>单位</td>
                </c:otherwise>
            </c:choose>
        <td>${account.authority}</td>
        <td>
            <fmt:formatDate value="${account.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </td>
        <td><a class="modalA"  href="#myModal" data-toggle="modal">修改</a>&nbsp;&nbsp;&nbsp;<a id="deleteAccount" href="##">删除</a></td>
    </tr>
    </c:forEach>

    </tbody>
</table>

<!--加入模态框-->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 style="font-weight: bold" class="modal-title" id="myModalLabel">
                    修改账号信息
                </h4>
            </div>
            <div class="modal-body">
                <!--添加文本-->
                <div>
                    <form id="modalForm" name="modalForm" class="form" action="" method="post">
                        <!--<label class="label-default">id</label>-->
                        <input type="text" class="control-label" id="id" name="id" value="" disabled="disabled" hidden="hidden"/>
                        <div class="form-group">
                            <label class="">用户账号：</label>
                            <input type="text" class="form-control" id="userAccount" name="userAccount" value=""/>
                        </div>
                        <div class="form-group">
                            <label class="">用户身份：</label>
                            <input type="text" class="form-control" id="userNumber" name="userNumber" value=""/>
                        </div>
                        <div class="form-group">
                            <label class="">用户类型：</label>
                            <select class="form-control" id="userType">
                                <option>单位</option>
                                <option>政协委员</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="">权限：</label>
                            <select class="form-control" id="userAuthority">
                                <option>普通</option>
                                <option>高级</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="userLabel" style="display: none">修改密码：</label>
                            <input type="password" class="form-control" id="userPassword" name="userPassword" value="" style="display: none"/>
                        </div>
                        <div class="form-group">
                            <label class="userLabel" style="display: none">确认密码：</label>
                            <input type="password" class="form-control" id="userInsurePassword" name="userInsurePassword" value="" style="display: none"/>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">关闭
                            </button>
                            <button type="button" id="modifyPassword" class="btn btn-primary" style="margin-left: 20px">
                                修改密码
                            </button>
                            <button type="submit" id="submit" class="btn btn-primary">
                                提交更改
                            </button>
                        </div>
                    </form>
                </div>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
<script type="text/javascript">
    $(function(){
        $(".modalA").click(function(){
            var $td = $(this).parents("tr").children("td");
            $("#id").val($td.eq(0).text());
            $("#userAccount").val($td.eq(1).text()) ;
            $("#userNumber").val($.trim($td.eq(2).text())) ;
            $("#userType").val($td.eq(3).text()) ;
            $("#userAuthority").val($td.eq(4).text());

           /* $("#myModal").modal({
                show:true,
            });*/
        });
        /*$("#myModal").modal({
            show:false,
            backdrop:false,
        });*/

    });

    $(".deleteAccount").click(function(){
        var $td = $(this).parents("tr").children("td");
        var id = $td.eq(0).text();
        $.post("/sqmy/deleteAccount.do",{"id":id},function(data){
            if(data.status=="success"){
                alert("删除成功");
                window.location.reload();
            }
        });
    });




    $("#modifyPassword").click(function(){
        $(".userLabel").css("display","block");
        $("#userPassword").css("display","block");
        $("#userInsurePassword").css("display","block");
    });

    // 在键盘按下并释放及提交后验证提交表单

    $().ready(function() {
        $("#modalForm").validate({
            submitHandler: function() {
//                $("#submit").click(function () {
                    $.post("/sqmy/modifyAccount.do", {
                        "id": $("#id").val(),
                        "userAccount": $("#userAccount").val(),
                        "userNumber": $("#userNumber").val(),
                        "userType": $("#userType").val(),
                        "userAuthority": $("#userAuthority").val(),
                        "userPassword": $("#userPassword").val()
                    }, function (data) {
                        if (data.status == "success") {
                            alert("修改成功");
                            window.location.reload();
                        } else {
                            alert("修改失败");
                        }
//                    });
                });
            },

            errorPlacement:function(error,element) {
                element.prev().append(error);
            },

            rules: {
                userAccount: {
                    required: true,
                    maxlength:20,
                },
                userInsurePassword:{
                    isEnsurePassword:true,
                },
                userNumber: {
                    required: true,
                    isIdCardNo:true,
                    minlength: 3,
                    maxlength:20,
                },

            },
            messages: {
                userAccount: {
                    required: "账号不能为空",
                    maxlength: "长度不能超过20个字符"
                },
                userNumber: {
                    required: "用户身份不能为空",
                    minlength: "若是单位请输入单位编号，若是委员输入身份证号"
                },
            }
        });


    })

    //验证身份证号
    jQuery.validator.addMethod("isIdCardNo", function (value, element) {
        if($("#userType").val()=="政协委员") {
            return this.optional(element) || isIdCardNo(value);
        }else{
            return true;
        }
    }, "请正确输入您的身份证号码");
    //增加身份证验证
    function isIdCardNo(num) {
        var factorArr = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1);
        var parityBit = new Array("1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2");
        var varArray = new Array();
        var intValue;
        var lngProduct = 0;
        var intCheckDigit;
        var intStrLen = num.length;
        var idNumber = num;
        // initialize
        if ((intStrLen != 15) && (intStrLen != 18)) {
            return false;
        }
        // check and set value
        for (i = 0; i < intStrLen; i++) {
            varArray[i] = idNumber.charAt(i);
            if ((varArray[i] < '0' || varArray[i] > '9') && (i != 17)) {
                return false;
            } else if (i < 17) {
                varArray[i] = varArray[i] * factorArr[i];
            }
        }
        if (intStrLen == 18) {
            //check date
            var date8 = idNumber.substring(6, 14);
            if (isDate8(date8) == false) {
                return false;
            }
            // calculate the sum of the products
            for (i = 0; i < 17; i++) {
                lngProduct = lngProduct + varArray[i];
            }
            // calculate the check digit
            intCheckDigit = parityBit[lngProduct % 11];
            // check last digit
            if (varArray[17] != intCheckDigit) {
                return false;
            }
        }
        else {        //length is 15
            //check date
            var date6 = idNumber.substring(6, 12);
            if (isDate6(date6) == false) {
                return false;
            }
        }
        return true;
    };
    function isDate6(sDate) {
        if (!/^[0-9]{6}$/.test(sDate)) {
            return false;
        }
        var year, month, day;
        year = sDate.substring(0, 4);
        month = sDate.substring(4, 6);
        if (year < 1700 || year > 2500) return false
        if (month < 1 || month > 12) return false
        return true
    }

    function isDate8(sDate) {
        if (!/^[0-9]{8}$/.test(sDate)) {
            return false;
        }
        var year, month, day;
        year = sDate.substring(0, 4);
        month = sDate.substring(4, 6);
        day = sDate.substring(6, 8);
        var iaMonthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        if (year < 1700 || year > 2500) return false
        if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) iaMonthDays[1] = 29;
        if (month < 1 || month > 12) return false
        if (day < 1 || day > iaMonthDays[month - 1]) return false
        return true
    }
    jQuery.validator.addMethod("isEnsurePassword", function(value,element) {
        return  $("#userPassword").val()==$(element).val();
    }, "两次密码不相同，请重新输入");
</script>

</html>