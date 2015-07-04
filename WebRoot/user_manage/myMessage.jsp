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
    	<div class="title_right">我的帖子(<s:property value="messageList.size()"/>)</div>
    	<div class="noMessage">
   	    	<img src="${pageContext.request.contextPath}/images/message.png" width="102" height="102" /> 
            <h2><a href="#">试试发表第一个帖子吧！>></a></h2>
            <p>社区就是资深dpers的大本营，谈美食、聊游记、扯八卦、抢赠品~</p>
        </div>
        
  </div>
</div>

	<%@ include file="../include/footer.jsp"%>
	<!-- 加载javascript处 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/user_center.js"></script>
	<script>
		$(function(){
		$('#ul_myMessage').css('display','block');
		Main(4);
		$('.list_button ul li a:eq(5)').css({"background":"#EE0000"});
		});
	</script>
 </body>
</html>
