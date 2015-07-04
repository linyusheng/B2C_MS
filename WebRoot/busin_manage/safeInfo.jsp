<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改资料</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/busin_center.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/busin_center.js"></script>
<script type="text/javascript">
$(function(){
	var nav = $('.nav ul li');
	nav.removeClass('first');
	$('.nav ul li:eq(1)').addClass('first');
});
</script>
<base target="_self" />
</head>
<body>
	
	<%@ include file="../include/top.jsp"%>
	<div class="body">
      <%@ include file="header.jsp"%>
      <div class="main">
        	
        	<%@ include file="left.jsp"%>
        	
           	<div class="personInfo_right">
            	<div class="position">
                	<a href="${pageContext.request.contextPath}/baseInfo">个人主页</a> &nbsp;>>&nbsp;基本信息
                </div>
                <div class="info_nav">
                	<ul>
                    	<li><a href="${pageContext.request.contextPath}/baseInfo">基本信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/otherInfo">更多信息</a></li>
                        <li class="on"><a href="${pageContext.request.contextPath}/safeInfo">修改密码</a></li>
                        <li><a href="${pageContext.request.contextPath}/shopInfo">商店信息</a></li>
                    </ul>
                </div>
            	<div class="acccountinfo">
                    <form action="saveBusinPassword" method="post">
                    <ul>
                        <li class="left"><label>*&nbsp;</label>旧密码：</li>	
                        <li class="right"><input type="password" name="password" id="password" size="25"/></li>
                        
                        <li class="left"><label>*&nbsp;</label>新密码：</li>	
                        <li class="right"><input type="password" name="newPassword" id="newPassword" size="25"/></li>
                        
                        <li class="left"><label>*&nbsp;</label>再输入一次：</li>	
                        <li class="right"><input type="password" name="confirm_password" id="confirm_password" size="25"/></li>
                        <li class="left"></li>
                        <li class="right"><input type="submit" id="button" value="提交修改" /></li>
                    </ul>  
                    </form>
                </div>
            </div>
            
        </div>
    </div>
    
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
