/**
 * 
 */
function judge()
{
	//alert("!!");
	var user = document.getElementById("username");
	var paw = document.getElementById("password");
	var url="loginServlet?user="+user.value+"&paw="+paw.value;
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