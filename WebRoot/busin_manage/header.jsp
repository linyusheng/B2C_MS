<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="header">
    <i><a href="${pageContext.request.contextPath}/index"></a></i>
    <div class="nav">
        <ul>
            <li><a href="${pageContext.request.contextPath}/businCenter">商家首页</a></li>
            <li><a href="${pageContext.request.contextPath}/baseInfo">个人主页</a></li>
            <li><a href="${pageContext.request.contextPath}/myStorehouse">我的仓库</a></li>
            <li><a href="${pageContext.request.contextPath}/postTrade">发布商品</a></li>
        </ul>
        <div class="search_box">
        	<form action="" method="post">
            	<input type="text" placeholder="商品名" />
                <input type="submit"  value=""/>
            </form>
        </div>
    </div>
</div>