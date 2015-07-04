<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="head">
    <span class="head_images">
        <img name="head" src="${pageContext.request.contextPath}/downloadPhoto" width="100" height="100"/>
        <a href="#">修改头像</a>
    </span>
    <span class="nav_bar">
       	<div class="div_top">
       		<h2><s:property value="user.userName"/></h2>
       		<p>个性签名：
       		<s:if test="%{user.signature == null || user.signature == \"\"}">
       			暂无个性签名哦!
       		</s:if>
       		<s:else>
       			<s:property value="user.signature"/>
       		</s:else>
       		</p>
       	</div>
        <div class="list_button">
        <ul>
        	<li><a href="${pageContext.request.contextPath}/userCenter">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/myComment">点评</a></li>
            <li><a href="${pageContext.request.contextPath}/myCollection">收藏</a></li>
            <li><a href="${pageContext.request.contextPath}/registration">签到</a></li>
            <li><a href="${pageContext.request.contextPath}/photo">图片</a></li>
            <li><a href="${pageContext.request.contextPath}/myMessage">帖子</a></li>
        </ul>
        </div>
    </span>
</div>