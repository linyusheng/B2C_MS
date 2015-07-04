<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<base target="_self">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  </head>
  
  <body>
	<!--欢迎横幅-->
	<div class="welcome">
    	<a href='<s:url action="index" />'><img name="logo" src="${pageContext.request.contextPath}/images/logo.png" width="150" height="100"/></a>
        <div class="label_welcome">欢迎登录</div>
    </div>
    
	<div id="tips_userName"></div>
    <div id="tips_password"></div>
	<div class="margin_border">
    <form action="login" onsubmit="return formValidator();" method="post" class="login">
    	<div class="form_item">
	        <label for="userName">用户名</label>
	        <input type="text" name="userName" id="userName" onfocus="outTips('userName')" class="input_text" x-webkit-speech lang="zh-CN" size="35"/>
        </div>
        <div class="form_item">
	        <label for="password">密&nbsp;&nbsp;码</label>
	        <input type="password" name="password" id="password" onfocus="outTips('password')" class="input_text" size="35"/>
        </div>
        <div class="form_item">
            <label>验证码</label>
            <input type="text" name="validate" id="validate" size="10" class="input_text" onBlur="checkCode()" onfocus="$('#checkCode').css('display','none');"/>
            <img src="${pageContext.request.contextPath}/newCode" onclick="this.src='newCode'" title="点击刷新">
            <div id="checkCode"></div>
        </div>
        <div class="form_item">
	        <label></label>
	        <input type="submit" value="登录" class="input_button" />
	        <input type="button" value="立即注册" class="input_button" onclick="location.href='register.jsp'"/>
        </div>
        
    </form>
	</div>
	 
	 <%@ include file="include/footer.jsp"%>
  </body>
</html>
