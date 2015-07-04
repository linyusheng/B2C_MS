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
    	<div class="title_right">我的足迹</div>
    	<div class="list">
            <div class="list_left"><a href="#">写点评</a></div>
            <div class="list_right">哪家店特别让你满意？那家店让你深恶痛绝？写封点评记录一下，顺便还能告诉更多人知道哦！</div>
        </div>
        <div class="list">
            <div class="list_left"><a href="#">发图片</a></div>
            <div class="list_right">无论是摄影粉，还是验毒派，还原现场分享给更多人是最大滴美德啊~一句话，有图有真相！</div>
        </div>
        <div class="list">
            <div class="list_left"><a href="#">签到</a></div>
            <div class="list_right">人的一生，看过很多风景，遇见过很多人~用签到随时记录自己去过的地方。</div>
        </div>
        <div class="list">
            <div class="list_left"><a href="#">收藏</a></div>
            <div class="list_right">把平时想去的商户收集起来，想起的时候就能快速找到啦。</div>
        </div>    
        <div class="list">
            <div class="list_left"><a href="#">发帖子</a></div>
            <div class="list_right">社区就是资深dpers的大本营，谈美食、聊游记、扯八卦、抢赠品~快去社区发个处女帖</div>
        </div> 
        
    </div>
</div>
	<%@ include file="../include/footer.jsp"%>
	<!-- 加载javascript处 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/user_center.js"></script>
	<script>
	$(function(){
		$('#ul_myFootPrint').css('display','block');
		Main(0);
		$('.list_button ul li a:eq(0)').css({"background":"#EE0000"});
	});
	</script>
</body>
</html>