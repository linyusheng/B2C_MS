<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="content_left" class="content_left">
    	<label class="title_left" id="myFootPrint">
       		<img src="${pageContext.request.contextPath}/images/triangle-right.png" width="34" height="34" />我的足迹 
        </label>
        <ul id="ul_myFootPrint">	
          	<li>等级:<s:property value="user.rank"/></li>
            <li>积分:<s:property value="user.score"/></li>
            <li>签到次数:<s:property value="user.signNumber"/></li>
            <li>注册时间:<s:date name="user.registerTime" format="yyyy-MM-dd"/></li>
            <li>最后登录:<s:date name="user.lastLoginTime" format="yyyy-MM-dd"/></li>
        </ul>
        <label class="title_left" id="myInfo">
        	<img src="${pageContext.request.contextPath}/images/triangle-right.png" width="34" height="34" />个人资料
        </label>
        <ul id="ul_myInfo">
            <li class='hover_color'>
            	<a href='${pageContext.request.contextPath}/userBaseInfo'>基本信息</a>
            </li>
            <li class='hover_color'>
            	<a href='${pageContext.request.contextPath}/userAllInfo'>完善信息</a>
            </li>
            <li class='hover_color'>
            	<a href='${pageContext.request.contextPath}/editPassword'>修改密码</a>
            </li>
		</ul>
        <label class="title_left" id="myComment">
	        <img src="${pageContext.request.contextPath}/images/triangle-right.png" width="34" height="34" />我的点评
        </label>
        <ul id="ul_myComment">
            <li class='hover_color'><a href='${pageContext.request.contextPath}/myComment'>点评信息</a></li>
		</ul>
        <label class="title_left" id="myCollection">
        	<img src="${pageContext.request.contextPath}/images/triangle-right.png" width="34" height="34" />我的收藏
        </label>
        <ul id="ul_myCollection">
            <li class='hover_color'><a href='${pageContext.request.contextPath}/myCollection'>收藏信息</a></li>
		</ul>
        <label class="title_left" id="myMessage">
        	<img src="${pageContext.request.contextPath}/images/triangle-right.png" width="34" height="34" />我的帖子
        </label>
        <ul id="ul_myMessage">
            <li class='hover_color'><a href='${pageContext.request.contextPath}/myMessage'>帖子信息</a></li>
		</ul>
    </div>