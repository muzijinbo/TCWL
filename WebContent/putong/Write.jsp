<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>

	<!-- <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div> -->
    
    <div class="formbody">
    
    <div class="formtitle"><span>快件信息</span></div>
    <form action="../WriteServlet" name="form">
    <ul class="forminfo">
    <li><label>快件内容</label><input name="neirong" id="neirong" type="text" class="dfinput" /><i>简单描述快件内容</i></li>
    <li><label>快件规格</label><input name="guige" id="guige" type="text" class="dfinput" /><i>简单描述快件重量体积</i></li>
    <li><label>配送速度</label><cite><input name="1" type="radio" value="1" checked="checked" />普通&nbsp;&nbsp;&nbsp;&nbsp;
    								<input name="1" type="radio" value="2" />加急&nbsp;&nbsp;&nbsp;&nbsp;
    								<input name="1" type="radio" value="0" />可延缓
    								</cite></li>
    <li><label>选择配送员 </label><input name="peisongyuan" id="peisongyuan" type="text" class="dfinput" value="" oninput="show()"/>
    							<input name="" type="button" class="btn" value="查看所有配送员" /></li>
<!--     <li><label>&nbsp;</label><div style="z-index:1;"><iframe style="display:none;"></iframe>fdsfsd</div></li> -->
<!--     <li><label>&nbsp;</label><div id="show" style="z-index:1;display:none">fffff</div></li> -->
    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="确认提交" onclick="tijiao()"/></li>
    </ul>
    </form>
    
    </div>
   <!--  <script type="text/javascript">
    function show()
    {
    	document.getElementById("show").style.display="";
    	document.getElementById("show").style="z-index:1;";
    }
    </script> -->
</body>
<script type="text/javascript">
function tijiao(){
// 	alert("!!");
	var f=document.form;
	if(f.neirong.value=="")
		{
		alert("填写快件内容！")
		}
	else if(f.guige.value=="")
		{
		alert("填写快件规格！")
		}
	else if(f.peisongyuan.value=="")
		{
		alert("填写配送员！")
		}
	else
		{
		f.submit();
		}
}
</script>
</html>