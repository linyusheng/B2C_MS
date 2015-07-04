<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我要点评</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/comment.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comment.js"></script>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
    <div class="body">
        <div class="theme">
                    <a href='<s:url action="index" />'><img src="${pageContext.request.contextPath}/images/logo.png" width="150" height="100" /></a>
                    <label>我要点评</label>
        </div>
        <div class="left">
             <div class="shopName">
                <p><label><s:property value="shop.shopName" /></label>(<label>*</label>为必填选项)</p>
                <a href="<s:url action="searchShop"></s:url>">点评其他商户»</a>
             </div>
             <div class="commentForm">
             	<form action="saveComment" method="post">
             	<input type="hidden" name="shopId" value="<s:property value="shop.shopId" />"/>
                <input type="hidden" name="comment.commentTotal" id="totalRank"/>
                <input type="hidden" name="comment.commentMass" id="qualityRank"/>
                <input type="hidden" name="comment.commentEnvironment" id="enviromentRank"/>
                <input type="hidden" name="comment.commetntService" id="serviceRank"/>
             	<ul>
                	<li class="li_left">总体评价：</li>
                    <li class="li_right">
                    	<div class="totalComment">
                            <ul id="rank" class="rank0">
                                <li onclick="rememberStar(1,'很差')"  onmouseover="over(1,'很差')" onmouseout="out()"></li>
                                <li onclick="rememberStar(2,'一般')" onmouseover="over(2,'一般')" onmouseout="out()"></li>
                                <li onclick="rememberStar(3,'好')" onmouseover="over(3,'好')" onmouseout="out()"></li>
                                <li onclick="rememberStar(4,'很好')"	onmouseover="over(4,'很好')" onmouseout="out()"></li>
                                <li onclick="rememberStar(5,'非常好')" onmouseover="over(5,'非常好')" onmouseout="out()"></li
                            ></ul>
                        </div>
                        <div class="commentTip">点击星星为商户打分</div>
                    </li>
                    
                    <li class="li_left">质量评价：</li>
                    <li class="li_right">
                   	  <ul id="quality" class="commentLi" >
                        <li class="0">0</li>
                        <li class="1">1</li>
                        <li class="2">2</li>
                        <li class="3">3</li>
                        <li class="4">4</li>
                      </ul>
                      <div class="qualityTip">给质量打分</div>
                    </li>
                    
                    <li class="li_left">环境评价：</li>
                    <li class="li_right">
                    	<ul id="enviroment" class="commentLi" >
                        <li class="0">0</li>
                        <li class="1">1</li>
                        <li class="2">2</li>
                        <li class="3">3</li>
                        <li class="4">4</li>
                      </ul>
                      <div class="enviromentTip">给环境打分</div>
                    </li>
                    
                    <li class="li_left">服务评价：</li>
                    <li class="li_right">
                    	<ul class="commentLi" id="service">
                        <li class="0">0</li>
                        <li class="1">1</li>
                        <li class="2">2</li>
                        <li class="3">3</li>
                        <li class="4">4</li>
                      </ul>
                      <div class="serviceTip">给服务打分</div>
                    </li>
                    
                    <li class="li_left">评价：</li>
                    <li class="li_right">
                    	<textarea name="comment.commentInfo" rows="6" placeholder="至少30字" ></textarea>
                        <div id="textTip"></div>
                    </li>
                    
                    <li class="li_left">:</li>
                    <li class="li_right"><input type="submit" value="提交点评"/></li>
                </ul>
                </form>
             </div>
        </div>
        <div class="right">
        	<div class="shopInfo">
                <a href='<s:url action="enterShop"><s:param name="id" value="shop.shopId"></s:param></s:url>'><s:property value="shop.shopName" /></a>
                <ul id="c">
                    <li>荣誉等级:&nbsp;<label class="red_font"><s:property value="shop.shopRanking" /></label></li>
                    <li>总体评价:&nbsp;<label class="red_font"><s:property value="shop.totalComment" /></label>&nbsp;分</li>
                    <li>质量评价:&nbsp;<label class="red_font"><s:property value="shop.qualityComment" /></label>&nbsp;分</li>
                    <li>环境评价:&nbsp;<label class="red_font"><s:property value="shop.environmentComment" /></label>&nbsp;分</li>
                    <li>服务评价:&nbsp;<label class="red_font"><s:property value="shop.serviceComment" /></label>&nbsp;分</li>
              	</ul>
                <div id="rank_tip">
                	<ul>
                    	<li>评分标准</li>
                    	<li><img src="${pageContext.request.contextPath}/images/rank/5.png" width="70" height="13" /><label>5分</label></li>
                        <li><img src="${pageContext.request.contextPath}/images/rank/4.png" width="70" height="13" /><label>4分</label></li>
                        <li><img src="${pageContext.request.contextPath}/images/rank/3.png" width="70" height="13" /><label>3分</label></li>
                        <li><img src="${pageContext.request.contextPath}/images/rank/2.png" width="70" height="13" /><label>2分</label></li>
                        <li><img src="${pageContext.request.contextPath}/images/rank/1.png" width="70" height="13" /><label>1分</label></li>
                    </ul>
                </div>
            </div>
            <div class="commentInfo">
            	<a href='<s:url action="enterShop"><s:param name="id" value="shop.shopId"></s:param></s:url>'>最新点评(<s:property value="shop.comemtCount" />封)</a>
                <div class="userComment">
               		<a href="#"><s:property value="comment.user.userName" /></a>
                    <label>总体评价：<img src='<s:url action="downlaodRankPhoto"><s:param name="rank" value="comment.commentTotal"></s:param></s:url>' width="70" height="13" /></label>
                    <p><s:property value="comment.commentInfo" /></p>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp"%>
</body>
</html>