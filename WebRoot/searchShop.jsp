<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base target="_self" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我要点评</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/searchShop.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="include/top.jsp"%>
<div class="body">
        <div class="theme">
        	<a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}/images/logo.png" width="150" height="100" /></a> 
          	<label>我要点评</label>
        </div>
        <div class="div_search">
            <img src="images/city/left.png" width="236" height="238" />
            <div class="div_center">
                <div class="center_input">
                	<p>查找想要点评的商户，发表亲历感言</p>
                    <div>
                    	<form action="search" method="post" id="find">
                    		<input name="keyword" type="text" placeholder="输入商户名，找你想要点评的商户吧"/>
                    	</form>
                        <a href="javascript:void(0)" onclick="document.getElementById('find').submit()">
                        	<img src="${pageContext.request.contextPath}/images/search-icon.png" width="18" height="18" />
                        </a>
                    </div>
                   
                </div>
                <img src="images/city/center.png" width="509" height="92" />
            </div>
            <img src="images/city/right.png" width="215" height="238"/>
        </div>
        
</div>
<%@ include file="include/footer.jsp"%>
</body>
</html>