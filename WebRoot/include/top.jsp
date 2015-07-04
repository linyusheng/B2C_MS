<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="top">
	<span>	
		<s:if test="#session.loginName != null">
			您好，${session.loginName}！
			<a href='${pageContext.request.contextPath}/logout' target="_parent">退出</a>
		</s:if>
		<s:else>
			还没登录！
			[<a href='${pageContext.request.contextPath}/login' target="_parent">登录</a>]
			[<a href="${pageContext.request.contextPath}/register.jsp" target="_parent">注册</a>]
		</s:else>
		<% 
			String url = request.getRequestURI();
			url = url.substring(url.lastIndexOf("/") + 1);
			if(url.equals("") || url.equals("index.jsp")){
			
			}else{
		%>
				<a href='${pageContext.request.contextPath}/index' style="display:block;float:right;">返回首页</a>
		<%
			}
		%>
	</span>
</div>
