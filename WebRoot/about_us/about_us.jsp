<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>关于我们</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/about_us.css" rel="stylesheet" type="text/css" />
<base target="_self" />
</head>
<body>
<%@ include file="../include/top.jsp"%>
<%@ include file="../include/head.jsp"%>

<div class="mid">
  <span class="mid_left">
  <div class="left_list">
        	<ul>
              <li class="about_usindex">	
           		<a href="${pageContext.request.contextPath}/introduction" >本站介绍</a> 
                   
           	 </li>
              <li>
           		<a href="${pageContext.request.contextPath}/userAgreement" >用户使用协议</a>
              	
              </li>
              <li>
           		<a href="${pageContext.request.contextPath}/businAgreement" >商户服务协议</a>
                   
              </li>
              <li>
           		<a href="${pageContext.request.contextPath}/property" >知识产权声明</a>
                    
              </li>
              <li class="last_line">
           		<a href="${pageContext.request.contextPath}/contactUs" >联系我们</a>
                  
              </li>
     		</ul>
   </div>
   </span>
  <span class="mid_right">
    <p class="right_title1">关于易找宝</p>
  <p class="right_space2">易找宝网(www.yizhaobao.com)是中国领先的本地生活消费平台，也是全球最早建立的独立第三方消费点评网站，致力于为网友提供餐饮、购物、休闲娱乐及生活服务等领域的商户信息、消费优惠以及发布消费评价的互动平台；同时，易找宝亦为中小商户提供一站式精准营销解决方案，包括电子优惠券、关键词推广、团购等。另继网站之后，易找宝已经成功在移动互联网布局这一模式，易找宝移动客户端已经成为本地生活必备工具。易找宝于2013年5月成立于韶关，创始团队成员包括联合创始人邓光华、林玉生、陈晓峰、余卓璇和王欢洁。</p> 
  <p class="right_space5">找宝从yizhaobao开始！易找宝(www.yizhaobao.com)始终致力于为用户提供最简单 、最实用、最贴心的导航服务。通过www.yizhaobao.com使您找宝更轻松惬意、生活更便捷，是我们每一个易找宝人努力的目标。
</p>
  <p class="right_space2">作为中国消费导航的领先品牌，免不了被部分网站所模仿，为了保证上网安全，请牢记我们的网址    www.yizhaobao.com
。如果你和我们一样喜欢yizhaobao，请把它也分享给你的朋友吧！</p>
  </span>
 
</div>

<%@ include file="../include/footer.jsp"%>
</body>
</html>