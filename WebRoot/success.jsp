<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册成功</title>
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	window.onload=function(){
		var odiv = document.getElementById("timer");
		var timer = null;
		//count参数为倒计时数，obj参数为插入内容的对象
		function Countdown(count,obj){
			return function(){
				if(count > 0){
					count = count - 1;
					obj.innerHTML = count;
				}
				else{
					location.href = "login.jsp";
					clearInterval(timer);
				}
			}
		}
		timer = setInterval(Countdown(5,odiv) ,1000);
	}
</script>

</head>

<body>

	<div class="finish">
    	<div class="success_tip">注册成功!<a href="login.jsp">点击此处跳转回登录界面>></a></div>
        <label>剩余</label><div id="timer">5</div><label>秒将自动跳转！</label>
    </div>

</body>
</html>