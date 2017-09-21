<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>欢迎</div>
    
    <dl class="leftmenu">
           
    <dd>
    <div class="title">
    <span><img src="../images/leftico01.png" /></span>物流单管理
    </div>
    
    <ul class="menuson">
        <li class="active"><cite></cite><a href="../zhiyuan/UserCheckList2.jsp" target="rightFrame">未处理物流单</a><i></i></li>
        <li><cite></cite><a href="../zhiyuan/UserCheckList3.jsp" target="rightFrame">正在派送</a><i></i></li>
        <li><cite></cite><a href="../zhiyuan/UserCheckList4.jsp" target="rightFrame">历史物流单</a><i></i></li>
        
        </ul> 
          
    </dd>
    
    <dd><div class="title"><span><img src="../images/leftico03.png" /></span>
    <a href="#">配送员管理</a>
    </div>
    </dd>  
   
    <dd><div class="title"><span><img src="../images/leftico04.png" /></span>
    <a href="../zhiyuan/UserCheckList.jsp" target="rightFrame">统计查询</a>
    </div>
    </dd>   
    
    </dl>
</body>
</html>