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
    	<div class="title_right">我的点评(<s:property value="commentList.size()"/>封)</div>
    	<s:if test="%{commentList == null}">
    		<div class="noComment">
	   	    	<img src="${pageContext.request.contextPath}/images/comment.png" width="102" height="102" /> 
	            <h2><a href="<s:url action="searchShop"></s:url>">试试写第一封点评吧！>></a></h2>
	            <p>那家店特别让你满意？哪家店让你深恶痛绝？写一封点评记录一下，顺便让更多人知道 </p>
        	</div>
    	</s:if>
    	<s:else>
    		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
    		<s:iterator value="commentList">
    		<div class="div_comment">
	        	<span class="span_top">
	            	<a href='<s:url action="enterShop">
	            				<s:param name="id" value="shop.shopId"></s:param>
	            			 </s:url>'>
	            		<s:property value="shop.shopName"/>
	            	</a>
	                <img src="<s:url action="downlaodRankPhoto">
	                				<s:param name="rank" value="commentTotal"></s:param>
	                		  </s:url>" width="65" height="14" />
					<p>	质量：<s:property value="commentMass"/><label>(<s:property value="#list[commentMass-1]"/>)</label> &nbsp;
	                	环境：<s:property value="commentEnvironment"/><label>(<s:property value="#list[commentEnvironment-1]"/>)</label> &nbsp;
	                	服务：<s:property value="commetntService"/><label>(<s:property value="#list[commetntService-1]"/>)</label>
	                </p>
	            </span>
	            <span class="span_center">
					<s:property value="commentInfo"/>
	            </span>
	            <span class="span_bottom">
	            	<label>发表于<s:date name="commentDate" format="yyyy-MM-dd"/></label>
	                <p>
	                	<a href="#">编辑</a>&nbsp;|&nbsp;
	                	<a href="<s:url action="deleteComment"><s:param name="id" value="commentId"></s:param></s:url>">删除</a>
	                </p>
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
			$('#ul_myComment').css('display','block');
			Main(2);
			$('.list_button ul li a:eq(1)').css({"background":"#EE0000"});
		});
	</script>
</body>
</html>