<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/jquery.js"></script>
<script src="../js/cloud.js" type="text/javascript"></script>
<!-- <script src="Myjs/login.js" type="text/javascript"></script> -->
<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>
<style>
.a{color:white;font-size:36px;margin-top:75px;text-align:center;}
</style>
<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  
    
    <div class="loginbody">
    
<!--     <span class="systemlogo"></span>  -->
    <div class="a">同城物流服务平台</div>   
    <div class="loginbox">
    
    <ul>
    
    <li><input name="username" id="username" type="text" placeholder="账号" class="loginuser" value="" onclick="JavaScript:this.value=''"/></li>
    <li><input name="password" id="password" type="password" placeholder="密码" class="loginpwd" value="" onclick="JavaScript:this.value=''"/></li>
    <!-- <li><input name="code" id="code" type="text" placeholder="验证码" class="logincode" onclick="JavaScript:this.value=''">
    	<img alt="" src="randCode.jsp" id="shuaxin"></li> -->
    <li><input name="" type="button" class="loginbtn" value="登录"  onclick="judge()"  />
    	<label>&nbsp;</label><label>&nbsp;</label>
    	<input name="" type="button" class="loginbtn" value="注册"  onclick="javascript:window.location=''"  /></li>
    <li><label>&nbsp;&nbsp;</label><label>&nbsp;&nbsp;</label><label>&nbsp;&nbsp;</label><label>&nbsp;&nbsp;</label><label>&nbsp;&nbsp;</label><label>&nbsp;&nbsp;</label>
    	<label><a href="#">忘记密码？</a></label></li>
    </ul>
       
    </div>   
    </div>
    <div class="loginbm"></div>
</body>
<script type="text/javascript">
function judge()
{
	//alert("!!");
	//alert(document.getElementById("username").value);
	var user = document.getElementById("username");
// 	alert(user.value);
	var paw = document.getElementById("password");
// 	alert(paw.value);
	var url="../loginServlet?user="+user.value+"&paw="+paw.value;
// 	alert(document.getElementById("username").value);
	if(user.value=="")
		{
		alert("用户名不能为空");
		user.focus();
		}
	else if(paw.value=="")
		{
		alert("密码不能为空");
		paw.focus();
		}
	else
		{
		window.location.href = url;
		}
}
</script> 
</html>