<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!--logo和搜索框-->
<div class="head">
	<span class="logo">
    	<a href="${pageContext.request.contextPath}/index" target="_self""><img name="logo" src="${pageContext.request.contextPath}/images/logo.png" width="150" height="100"/></a>
    </span>
	<span class="search">
        <form id="searchForKey" action="search" method="post">
            <input type="text" name="keyword" class="search_text" placeholder="商品、商户名" x-webkit-speech/>
        </form>
        <a class="search_button" href="javascript:void(0)">搜索</a>
  	</span>
</div>

	
