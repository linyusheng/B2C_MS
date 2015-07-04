<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户中心</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/user_center.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%@ include file="../include/top.jsp"%>
<%@ include file="shared_head.jsp"%>
<div id="content">
	<!--左部份内容-->
	<%@ include file="shared_left.jsp"%>
    <!--右部份内容-->
	<div  id="content_right" class="content_right">
    	<div class="title_right">修改密码</div>
		<ul>
        	<form action="savepassword" id="changePassword" method="post">
        	<li class="left">旧密码：</li>	<li class="right"><input type="password" name="password" id="password" size="25"/></li>
            <li class="left">新密码：</li>	<li class="right"><input type="password" name="newPassword" id="newPassword" size="25"/></li>
            <li class="left">再输入一次：</li>	<li class="right"><input type="password" name="confirm_password" id="confirm_password" size="25"/></li>
        	<li class="left"></li><li class="right"><input type="submit" id="submit" value="提交修改" /></li>
            </form>
        </ul>
    </div>
</div>

	<%@ include file="../include/footer.jsp"%>
	<!-- 加载javascript处 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/messages_zh.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/user_center.js"></script>
	<script>
	$(function(){
	$('#ul_myInfo').css('display','block');
	Main(1);
	$('.list_button ul li a:eq(0)').css({"background":"#EE0000"});
	});
	</script>
</body>
</html>