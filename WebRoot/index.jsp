<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base target="_self" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>易找宝</title>
	<link rel=”icon” href=”${pageContext.request.contextPath}/favicon.ico” mce_href=”${pageContext.request.contextPath}/favicon.ico” type=”image/x-icon” />
	<link rel=”shortcut icon” href=”/favicon.ico” mce_href=”/favicon.ico” type=”image/x-icon” />
    <link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/include.js" language="javascript"></script>
  </head>
  <body>
<%@ include file="include/top.jsp"%>
<%@ include file="include/head.jsp"%>

<!--body-->
<div class="home">
	<!--导航栏-->
	<div class="nav">
		<span class="nav_market">商户导航</span>
	    <span class="nav_bar">
	    	<ul>
	       	  <li><a href="${pageContext.request.contextPath}/index" >首页</a></li>
	          <li><a href="${pageContext.request.contextPath}/userCenter">用户中心</a></li>
	          <li><a href="${pageContext.request.contextPath}/scoreCenter">积分中心</a></li>
	          <li><a href="${pageContext.request.contextPath}/community/">圈子</a></li>
	          <li><a href="${pageContext.request.contextPath}/introduction">关于我们</a></li>
	      </ul>
	    </span>
	</div>
	<!--body左部分-->
    <span class="home_left">
    	<%@ include file="include/sort.jsp"%>
    	<div class="ad_1">
            <div class="hd">
                <ul><li class="on">1</li><li>2</li><li>3</li><li>4</li></ul>
            </div>
            <div class="bd">
                <ul>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/ad_1/1.png" width="175" height="150" /></a></li>
                    <li style="display:none"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_1/2.png" width="175" height="150" /></a></li>
                    <li style="display:none"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_1/3.png" width="175" height="150" /></a></li>
                    <li style="display:none"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_1/4.png" width="175" height="150" /></a></li>
                </ul>
            </div>
        </div>
    	<script type="text/javascript">$(".ad_1").slide({titCell:".hd li",mainCell:".bd ul",autoPlay:"true"});</script>
    </span>
    <!--body中部分-->
    <span class="home_center">
        <div class="ad_2">
            <div class="hd">
                <ul><li class="on">1</li><li>2</li><li>3</li><li>4</li><li>5</li></ul>
            </div>
            <div class="bd">
                <ul>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/ad_2/1.png" width="600" height="250" /></a></li>
                    <li style="display:none;"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_2/2.png" width="600" height="250" /></a></li>
                    <li style="display:none;"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_2/3.png" width="600" height="250" /></a></li>
                    <li style="display:none;"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_2/4.png" width="600" height="250" /></a></li>
                    <li style="display:none;"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_2/5.png" width="600" height="250" /></a></li>
                </ul>
            </div>
        </div>
        <script type="text/javascript">$(".ad_2").slide({titCell:".hd li",mainCell:".bd ul",autoPlay:true,delayTime:"700"});</script>
 		<div class="label"><label>热门商户</label></div>
        <div class="ad_vendor">
        	<ul>
        		<s:iterator value="shopColl">
            	<li>
					<div class="userPoto">
						<a href='${pageContext.request.contextPath}/enterShop?id=<s:property value="shopId"/>'>
						<img src="<s:url action="downlaodShopPhoto">
								  	<s:param name="typeId" value="Shoptype.typeId"></s:param>
								  	<s:param name="fileName" value="shopPhoto"></s:param>
								  </s:url>" width="166" height="120"/></a>
					</div>
                    <div class="VendorInfo">
                    	<h2><a href='${pageContext.request.contextPath}/enterShop?id=<s:property value="shopId"/>'><s:property value="shopName"/></a> </h2>
                       	点评度：<s:property value="comemtCount"/>封<br />
						地址：<s:property value="shopAddress"/><br />
                       	标签：<s:property value="shopLabel"/>
                  	</div>
                </li>
                </s:iterator>
            </ul>
        </div>
        <div class="label"><label>最新点评</label></div>
        <div class="new_comment">
        	<ul>
        		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
        		<s:iterator value="commentColl">
                <li>
                    <div class="user_head">
                    	<a href="#"><img src="<s:url action="downloadUserPhoto">
	   			  				  				  <s:param name="userPhoto" value="user.photo"></s:param>
	   			  				  				  </s:url>" width="50" height="50"/></a>
	   			  	</div>
                    <div class="userName_shopName">
                    	<a href="#"><s:property value="shop.shopName"/></a>&nbsp;@&nbsp;<a href="#"><s:property value="user.userName"/></a>
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
                  <div class="comment_under"><s:property value="commentInfo"/></div>
                </li>
                </s:iterator>
                <li class="more"><a href="#">更多>></a></li>
            </ul>
        </div>
    </span>
    <!--body右部分-->
    <span class="home_right">
        <div class="container">
        	<s:if test="#session.loginName == null">
        		<div class="welcome">
	            	<label>您好，欢迎来到易找宝！</label>
	                <a href="${pageContext.request.contextPath}/login">登录</a>
	                <a href="${pageContext.request.contextPath}/registerIndex">免费注册</a>
            	</div>
        	</s:if>
            <s:else>
            	<div class="comment">
            	<label>跟大家分享一下好地方吧！</label>
            	<form action="searchShop" method="post"><input type="submit" value="写点评"/></form>
            	</div>
            </s:else>
        </div>
        <div class="slideTxtBox">
        	<div class="hd">
            	<ul>
                	<li class="on">商城公告</li>
                    <li>店主之家</li>
                </ul>
            </div>
            <div class="bd">
            	<ul>
                	<li><a href="#">新功能使用说明</a></li>
                    <li><a href="#">新功能使用说明</a></li>
                    <li><a href="#">新功能使用说明</a></li>
                    <li><a href="#">新功能使用说明</a></li>
                </ul>
                <ul style="display:none">
                	<li><a href="#">如何申请开店</a></li>
                    <li><a href="#">如何申请开店</a></li>
                    <li><a href="#">如何申请开店</a></li>
                    <li><a href="#">如何申请开店</a></li>
                </ul>
            </div>
          <script type="text/javascript">$(".slideTxtBox").slide(); </script>
    	</div>
        <div class="top_Shop">
        	<label>热门餐厅</label>
            <ul>
            	<li>
           	    	<a href="#"><img src="${pageContext.request.contextPath}/images/hot_shop/shop1.jpg" width="50" height="40" /> </a>
                    <div><a href="#">咖啡天使</a> <img src="${pageContext.request.contextPath}/images/rank/5.png" width="70" height="12" />(300)</div>
                </li>
                <li>
                	<a href="#"><img src="${pageContext.request.contextPath}/images/hot_shop/shop2.jpg" width="50" height="40" /> </a>
                   <div><a href="#">咖啡天使</a> <img src="${pageContext.request.contextPath}/images/rank/5.png" width="70" height="12" />(300)</div>
                </li>
                <li>
               		<a href="#"><img src="${pageContext.request.contextPath}/images/hot_shop/shop3.jpg" width="50" height="40" /> </a>
                    <div><a href="#">咖啡天使</a> <img src="${pageContext.request.contextPath}/images/rank/5.png" width="70" height="12" />(300)</div>
                </li>
                <li>
                	<a href="#"><img src="${pageContext.request.contextPath}/images/hot_shop/shop4.jpg" width="50" height="40" /> </a>
                    <div><a href="#">咖啡天使</a> <img src="${pageContext.request.contextPath}/images/rank/5.png" width="70" height="12" />(300)</div>
                </li>
                <li>
               		<a href="#"><img src="${pageContext.request.contextPath}/images/hot_shop/shop5.jpg" width="50" height="40" /> </a>
                    <div><a href="#">咖啡天使</a> <img src="${pageContext.request.contextPath}/images/rank/5.png" width="70" height="12" />(300)</div>
                </li>
            </ul>
        </div>
    </span>
</div>
	<%@ include file="include/footer.jsp"%>
</body>
</html>
