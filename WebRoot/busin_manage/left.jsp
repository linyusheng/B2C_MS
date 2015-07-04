<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="main_left">
    <a href="${pageContext.request.contextPath}/baseInfo"><s:property value="user.userName"/></a>
    <i><img src="${pageContext.request.contextPath}/downloadPhoto" width="102" height="102" /></i>
    <div class="business-intro">
        <h3>商家信息</h3>
        <ul>
            <li class="left">商家等级:</li>	<li class="right">&nbsp;<s:property value="user.rank"/></li>
            <li class="left">商家积分:</li>	<li class="right">&nbsp;<s:property value="user.score"/></li>
            <li class="left">点评数量:</li>	<li class="right">&nbsp;200封</li>
            <li class="left">注册时间:</li>	<li class="right">&nbsp;<s:date name="user.registerTime" format="yyyy-MM-dd"/></li>
            <li class="left">最后登录:</li>	<li class="right">&nbsp;<s:date name="user.lastLoginTime" format="yyyy-MM-dd"/></li>
        </ul> 
    </div>
</div>