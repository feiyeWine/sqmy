<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="icon" href="/sqmy/jsp/images/log.ico" type="image/x-icon"/>
<title>社情民意系统</title>
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(/sqmy/jsp/images2/bg.gif);
	background-repeat: repeat-x;
}
#spanTitle{
  margin-left: 550px;
  font-size: 45px;
  font-weight: bold;
  color: #2aabd2;
}
-->
</style>
  <script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>
</head>

<body>
<form id="loginform" action="/sqmy/login.do" method="post">
<table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0"><span id="spanTitle">社情民意系统</span>
      <tr>
        <td height="561" style="background:url(/sqmy/jsp/images2/lbg.gif)"><table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="238" style="background:url(/sqmy/jsp/images2/login01.jpg)">&nbsp;</td>
          </tr>
          <tr>
            <td height="190"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="208" height="190" style="background:url(/sqmy/jsp/images2/login02.jpg)">&nbsp;</td>
                <td width="518" style="background:url(/sqmy/jsp/images2/login03.jpg)"><table width="320" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="40" height="50"><img src="/sqmy/jsp/images2/user.gif" width="30" height="30"></td>
                    <td width="38" height="50">用户</td>
                    <td width="242" height="50"><input type="text" name="account" id="textfield" style="width:164px; height:32px; line-height:34px; background:url(/sqmy/jsp/images2/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; font-family:Verdana, Geneva, sans-serif;"> <span id="warn"></span></td>
                  </tr>
                  <tr>
                    <td height="50"><img src="/sqmy/jsp/images2/password.gif" width="28" height="32"></td>
                    <td height="50">密码</td>
                    <td height="50"><input type="password" name="password" id="textfield2" style="width:164px; height:32px; line-height:34px; background:url(/sqmy/jsp/images2/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; "></td>
                  </tr>
                  <tr>
                    <td height="40">&nbsp;</td>
                    <td height="40">&nbsp;</td>
                    <td height="60"><button type="button" id="login_but" style="background:url(/sqmy/jsp/images2/login.gif);width:95px; height:34px "/></td>
                  </tr>
                </table></td>
                <td width="214" style="background:url(/sqmy/jsp/images2/login04.jpg)" >&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="133" style="background:url(/sqmy/jsp/images2/login05.jpg)">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

</form>
<div style="text-align:center;">
</div>
</body>
  <script>
    $("#login_but").click(function(){
      var url=$("#loginform").attr("action");
      $.post(url,$("#loginform").serialize(),function(data){
        if(data.status == "success"){
          document.location.href="/sqmy/jsp/view/home.jsp";
        }
        else if(data.status == "fail"){
          //alert("Your username or password may be wrong , please try again.");
          $("#warn").html("用户名或密码错误！");
          $("input[name='password']").attr("value","");
        }
      });
    })

  </script>
</html>
