<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.tcwl.check.*,java.util.*,org.apache.struts2.json.JSONUtil"%>
<% 
String OrderID=request.getParameter("OrderID");
String OrderState=request.getParameter("OrderState");
String Id=new String(session.getAttribute("Id").toString().getBytes("ISO-8859-1"),"UTF-8");
// String Id="123456";

if(OrderID==""){
	OrderID=null;
	System.out.println("OrderID为空否:"+OrderID);
}

if(OrderState==""){
	OrderState=null;
}



if(OrderID!=null){
	OrderID=new String(OrderID).trim();
}


if(OrderState!=null){
	OrderState=new String(OrderState).trim();
}



/* System.out.println("OrderID:"+OrderID);
System.out.println("UserID:"+UserID);
System.out.println("OrderState:"+OrderState); */



List<HashMap<String,Object>> list = putongcheckList.Qfind(OrderID,Id,OrderState);
out.print(JSONUtil.serialize(list));
%>

