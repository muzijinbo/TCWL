<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="../js/jquery.js"></script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<style>
.a{color:white;font-size:24px;}
.topleft1{height:88px;float:left; width:300px;margin-top:25px;}
.b{cursor：pointer;}
#tip
{
z-index:100;
position:absolute;
}
</style>

<body style="background:url(../images/topbg.gif) repeat-x;">
<%
String Id=new String(session.getAttribute("Id").toString().getBytes("ISO-8859-1"),"UTF-8");
%>
<script type="text/javascript">

</script>

<!--   <script type="text/javascript">
  $(document).ready(function(){
  $(".click").click(function(){
//   $(".tip").fadeIn(200);
  alert("!!!");
  $("#tanchuang").show();
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
  location.href="../login.jsp";
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

}); 
</script>  --> 
<div class="topleft1"><a class="a" href="#">同城物流服务平台</a></div>

<div class="topright">
    
    <ul>
    <li><span><img src="../images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li class="click"><a href="../login/login.jsp" target="_parent">退出</a></li>
    </ul>   
    <div class="user">
    <span><%= Id%></span>
    <i>消息</i>
    <b>0</b>
    </div>    
    
</div>
<!--       <div id="tanchuang" class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="../images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div> -->
    
    </div>  
</body>
</html>