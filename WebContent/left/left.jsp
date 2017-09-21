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
    <span><img src="../images/leftico01.png" /></span>
    <a href="../putong/Write.jsp" target="rightFrame">填写订单</a>
    </div>  
    </dd>
    
    <dd><div class="title"><span><img src="../images/leftico03.png" /></span>
    <a href="../putong/UserCheckList.jsp" target="rightFrame">管理订单</a>
    </div>
    </dd>  
   
    <dd><div class="title"><span><img src="../images/leftico04.png" /></span>
    <a href="../putong/Write.jsp" target="rightFrame"></a>查看配送员
    </div>
    </dd>   
    
    </dl>
</body>
</html>