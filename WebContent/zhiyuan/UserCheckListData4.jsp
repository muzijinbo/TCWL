<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.tcwl.check.*,java.util.*,org.apache.struts2.json.JSONUtil"%>
<% 
String OrderID=request.getParameter("OrderID");
String UserID=request.getParameter("UserID");
String OrderState=request.getParameter("OrderState");



if(OrderID==""){
	OrderID=null;
	System.out.println("OrderID为空否:"+OrderID);
}
if(UserID==""){
	UserID=null;
}
if(OrderState==""){
	OrderState=null;
}



if(OrderID!=null){
	OrderID=new String(OrderID).trim();
}

if(UserID!=null){
	UserID=new String(UserID).trim();
}
if(OrderState!=null){
	OrderState=new String(OrderState).trim();
}



/* System.out.println("OrderID:"+OrderID);
System.out.println("UserID:"+UserID);
System.out.println("OrderState:"+OrderState); */



List<HashMap<String,Object>> list = UsercheckList4.Qfind(OrderID,UserID,OrderState);
out.print(JSONUtil.serialize(list));
%>

