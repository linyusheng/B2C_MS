<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎来到商家中心！</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/busin_center.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/busin_center.js"></script>
<script type="text/javascript">
$(function(){
	var nav = $('.nav ul li');
	nav.removeClass('first');
	$('.nav ul li:eq(0)').addClass('first');
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
        	
            <div class="main_right">
            	<div class="label"><label>最新点评</label></div>
            	<ul>
            		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
            		<s:iterator value="commentColl">
                    <li>
                        <div class="user_head">
                        	<a href="#"><img src="<s:url action="downloadUserPhoto">
	   			  				  				  <s:param name="userPhoto" value="user.photo"></s:param>
	   			  				  				  </s:url>" width="50" height="50" /></a>
                        	<a href="#"><s:property value="user.userName"/></a>
                        </div>
                        <div class="comment_top">
                            <dl>
                                <dt><img src="<s:url action="downlaodRankPhoto">
	   			  				  			  <s:param name="rank" value="commentTotal"></s:param>
	   			  				  			  </s:url>" width="85" height="15" /></dt>
                                <dt>质量(<s:property value="#list[commentMass-1]"/>)</dt>
                                <dt>环境(<s:property value="#list[commentEnvironment-1]"/>)</dt>
                                <dt>服务(<s:property value="#list[commetntService-1]"/>)</dt>
                                <dt>日期:<s:date name="commentDate" format="yyyy-MM-dd"/></dt>
                            </dl>  
                        </div>
                      <div class="comment_under"><s:property value="commentInfo"/> </div>
                    </li>
                    </s:iterator>
                    <li class="more"><a href="#">更多>></a></li>
            	</ul>
            </div>
        </div>
    </div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>