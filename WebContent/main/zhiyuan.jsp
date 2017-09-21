<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>同城物流服务系统</title>
</head>
<%
request.setCharacterEncoding("utf-8");
String user = request.getParameter("Id").trim();
user=new String(user.getBytes("ISO-8859-1"),"UTF-8");
session.setAttribute("Id",user);
%>
<frameset rows="88,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="../top/top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="187,*" frameborder="no" border="0" framespacing="0">
    <frame src="../left/left1.jsp" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="../zhiyuan/UserCheckList2.jsp" name="rightFrame" id="rightFrame" title="rightFrame"/>
  </frameset>
</frameset>
<noframes><body>
</body></noframes>
</html> 	