<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>圈子</title>
<base target="_self" />
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/community.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.1.js"></script>
</head>
<body>
<%@ include file="../include/top.jsp"%>
<div class="head">
	<div class="logo">
    	<a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}/images/logo.png" width="150" height="100" /></a>
    </div>
    <div class="search">
    	<form id="searchForKey" action="" method="post">
            <input class="search_text" type="text" placeholder="话题、圈子" x-webkit-speech lang="zh-CN" name=""/>
            <input type="radio" name="search" checked="checked"/><label>话题搜索</label>
            <input type="radio" name="search"/><label>圈子搜索</label>
        </form>
        <a class="search_button" href="javascript:void(0)" >搜索</a>
   	</div>
</div>
<div class="body">
    <div class="ad_4">
        <div class="hd">
            <ul><li class="on"></li><li></li><li></li><li></li></ul>
        </div>
        <div class="bd">
            <ul>
                <li><a href="#"><img src="${pageContext.request.contextPath}/images/ad_4/1.jpg" width="658" height="248" /></a></li>
                <li style="display:none;"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_4/2.jpg" width="658" height="248" /></a></li>
                <li style="display:none;"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_4/3.jpg" width="658" height="248" /></a></li>
                <li style="display:none;"><a href="#"><img src="${pageContext.request.contextPath}/images/ad_4/4.jpg" width="658" height="248" /></a></li>
            </ul>
        </div>
	</div>
<script type="text/javascript">$(".ad_4").slide({trigger:"click",effect:"fold",titCell:".hd li",mainCell:".bd ul",autoPlay:true,delayTime:700,interTime:5000});</script>
    <div class="button">
    	<a href="${pageContext.request.contextPath}/community/add"><i></i>创建我的新圈子</a>
    	<a href="#"><i></i>发表我的新话题</a>
    </div>
    <div class="main">
    	<div class="new_community">
        	<div class="top_title"><label>热门圈子</label></div>
            <div class="community">
            	<ul>
                	<li>
                    	<div class="com_left">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/community/1.jpg" width="90" height="90" /></a>
                        </div>
                        <div class="com_right">
                        	<div><label><a href="#">我的摄影棚</a></label></div>
                            <span>
                            	<p>话题<label>(17)</label></p>
                                <p>成员<label>(13)</label></p>
                           	</span>
                            <p>喜欢拍照的朋友，摄影的朋友，都可以进来溜达看看!</p>
                        </div>
                  	</li>
                    <li>
                    	<div class="com_left">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/community/2.jpg" width="90" height="90" /></a>
                        </div>
                        <div class="com_right">
                        	<div><label><a href="#">我们都爱看电影</a></label></div>
                            <span>
                            	<p>话题<label>(10)</label></p>
                                <p>成员<label>(16)</label></p>
                           	</span>
                            <p>爱看电影，特别爱看电影！ 什么都不做，每天只看电影，我也愿意。</p>
                        </div>
                  	</li>
                    <li>
                    	<div class="com_left">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/community/3.jpg" width="90" height="90" /></a>
                        </div>
                        <div class="com_right">
                        	<div><label><a href="#">Engadget</a></label></div>
                            <span>
                            	<p>话题<label>(10)</label></p>
                                <p>成员<label>(16)</label></p>
                           	</span>
                            <p>瘾科技（Engadget）是一个关于消费电子产品的流行科技网志与播客。</p>
                        </div>
                  	</li>
					<li>
                    	<div class="com_left">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/community/3.jpg" width="90" height="90" /></a>
                        </div>
                        <div class="com_right">
                        	<div><label><a href="#">Engadget</a></label></div>
                            <span>
                            	<p>话题<label>(10)</label></p>
                                <p>成员<label>(16)</label></p>
                           	</span>
                            <p>瘾科技（Engadget）是一个关于消费电子产品的流行科技网志与播客。</p>
                        </div>
                  	</li>
            	</ul>
            </div>
        </div>
        
    	<div class="new_community">
        	<div class="top_title"><label>热门话题</label></div>
            <div class="message">
            	<ul>
                	<li>
                    	<div class="ms_left">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/default.gif" width="90" height="90" /></a>
                        </div>
                        <div class="ms_right">
                        	<p><a href="#">我是白菜淘货党，真人秀</a></p>
                        	<span>
                            	<p><a href="#">ceshiyixia</a>&nbsp;来自&nbsp;<a href="#">我们都爱看电影</a></p>
                                <p>发表日期：2014-05-01&nbsp;&nbsp;&nbsp;<a href="#"> 评论(10)</a></p>
                            </span>
                            
                        </div>
                  	</li>
                    <li>
                    	<div class="ms_left">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/default.gif" width="90" height="90" /></a>
                        </div>
                        <div class="ms_right">
                        	<p><a href="#">爱情开在我们的旁边</a></p>
                        	<span>
                            	<p><a href="#">ceshiyixia</a>&nbsp;来自&nbsp;<a href="#">我的摄影棚</a></p>
                                <p>发表日期：2014-05-01&nbsp;&nbsp;&nbsp;<a href="#"> 评论(10)</a></p>
                            </span>
                            
                        </div>
                  	</li>
                    <li>
                    	<div class="ms_left">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/default.gif" width="90" height="90" /></a>
                        </div>
                        <div class="ms_right">
                        	<p><a href="#">吐槽上瘾 开扒我的同事</a></p>
                        	<span>
                            	<p><a href="#">ceshiyixia</a>&nbsp;来自&nbsp;<a href="#">我们都爱看电影</a></p>
                                <p>发表日期：2014-05-01&nbsp;&nbsp;&nbsp;<a href="#"> 评论(10)</a></p>
                            </span>
                            
                        </div>
                  	</li>
                    <li>
                    	<div class="ms_left">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/default.gif" width="90" height="90" /></a>
                        </div>
                        <div class="ms_right">
                        	<p><a href="#">下午茶の那些悠闲时光</a></p>
                        	<span>
                            	<p><a href="#">ceshiyixia</a>&nbsp;来自&nbsp;<a href="#">我的摄影棚</a></p>
                                <p>发表日期：2014-05-01&nbsp;&nbsp;&nbsp;<a href="#"> 评论(10)</a></p>
                            </span>
                            
                        </div>
                  	</li>
                    
                </ul>
            </div>
        </div>
        
    </div>
    
</div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>