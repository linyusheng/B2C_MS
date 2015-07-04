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
		<div class="title_right">我的收藏(<s:property value="collectionList.size()"/>)</div>
		<s:if test="%{collectionList.size() == 0}">
			<div class="noCollection">
	   	    	<img src="${pageContext.request.contextPath}/images/collection.png" width="102" height="102" /> 
	            <h2><a href="<s:url action="searchShop"></s:url>">试试收藏第一家商户吧！>></a></h2>
	            <p>把平时想去的商户收集起来，想起的时候就能快速找到啦。</p>
        	</div>
		</s:if>
		<s:else>
			<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
    		<s:iterator value="collectionList">
			<div class="div_collection">
	        	<span class="coll_top">
	            	<a href='<s:url action="enterShop">
	            				<s:param name="id" value="shop.shopId"></s:param>
	            			 </s:url>'>
	            		<s:property value="shop.shopName"/>
	            	</a>
	            </span>
	            <span class="coll_center">
	            	<img src="<s:url action="downlaodRankPhoto">
	                				<s:param name="rank" value="shop.totalComment"></s:param>
	                		  </s:url>" width="65" height="14" />
	                <s:property value="shop.shopAddress"/>
	            </span>
	            <span class="coll_bottom">
	            	<s:date name="collectionTime" format="yyyy-MM-dd"/>&nbsp;收藏&nbsp;&nbsp;|&nbsp;&nbsp;
	            	<a href="<s:url action="deleteCollection"><s:param name="id" value="collectionId"></s:param></s:url>">删除</a>
	            </span>
       		</div>
       		</s:iterator>
		</s:else>
  	</div>
</div>

	<%@ include file="../include/footer.jsp"%>
	<!-- 加载javascript处 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/user_center.js"></script>
	<script>
		$(function(){
		$('#ul_myCollection').css('display','block');
		Main(3);
		$('.list_button ul li a:eq(2)').css({"background":"#EE0000"});
		});
	</script>
  </body>
</html>
