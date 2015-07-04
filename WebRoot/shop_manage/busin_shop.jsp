<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="initial-scale=1.0,user-scalable=no" /> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商店</title>
<base target="_self" />
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/busin_shop.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer-v1.7.1/layer/layer.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/busin_shop.js"></script>
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.2&key=4dda83e9837a825271d214348eb4f168"></script>  
</head>
<body onload="initialize()">
<%@ include file="../include/top.jsp"%>
<!--内容-->
<div class="body">
	<div class="left">
   	  <div class="user_info">
       	<div class="shop_name"><s:property value="shop.shopName" /></div>
        <div class="shop_picture">
        	<img src="<s:url action="downlaodShopPhoto">
        			  <s:param name="fileName" value="shop.shopPhoto"></s:param>
              		  <s:param name="typeId" value="shop.shoptype.typeId"></s:param>
        			  </s:url>" width="249" height="189" />
        </div>
        <div class="shop_info">
        	<div class="introdution">
	            <label>地址：</label><s:property value="shop.shopAddress" /><br />
	            <label>电话：</label><s:property value="shop.shopPhone" /><br />
				<label>特色：</label><s:property value="shop.shopFeature" /><br />
	            <a href="#">更多其他信息 >></font></a><br />
            </div>
            <div class="button">
                <form action="writeComment" method="post">
	            	<s:hidden name="id" id="shopId"/>
	            	<input class="write_comment" type="submit" value="写点评" />
            	</form>
            	<s:if test="isCollection == \"true\"">
	                <input type="submit" value="已收藏" id="haveCollection"/>
                </s:if>
                <s:else>
                	<form action="collectionShop" method="post" id="collectForm">
	                	<s:hidden name="id" />
	                    <input type="submit" value="收藏" />
	                </form>
                </s:else>
	        </div>
        </div>
      </div>
      <div class="rank">
      	<ul>
        	<li style="border-bottom:2px solid #CC0000;"><a href="#" style="color:#CC0000;">全部</a>(<s:property value="commentColl.size()"/>)</li>
        	<li><a href="#">5星</a>(<s:property value="rankNum[4]"/>)</li>
            <li><a href="#">4星</a>(<s:property value="rankNum[3]"/>)</li>
            <li><a href="#">3星</a>(<s:property value="rankNum[2]"/>)</li>
            <li><a href="#">2星</a>(<s:property value="rankNum[1]"/>)</li>
            <li><a href="#">1星</a>(<s:property value="rankNum[0]"/>)</li>
        </ul>
      </div>
      <%@ include file="../shop_manage/rankComment.jsp"%>
    </div>

    <div class="right">
    	<div id="container"></div>
        <div class="map_search">
        	<div class="div_1"><label>地图路线查询</label><a href="javascript:void(0);">查看全图>></a></div>
            <div class="div_2"><label>起点</label><input type="text" /></div>
            <div class="div_3"><label>终点</label><input type="text" /></div>
            <div class="div_4">
            	<a href="#" id="transfer">公共交通&nbsp;></a>
                <a href="#" id="driver" style="float:right;">驾车&nbsp;></a>
            </div>
        </div>
        <div class="ad">
        	<div class="ad_title">你可能会喜欢</div>
            <div class="ad_shop">
                <ul>
                	<li class="name"><a href="#">金锚传菜(新华路店)</a></li>
                    <li><img src="${pageContext.request.contextPath}/images/rank/2.png" width="85" height="15" /></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/shop3.jpg" width="190" height="140" /></a></li>
                </ul>
                <ul>
                	<li class="name"><a href="#">金锚传菜(新华路店)</a></li>
                    <li><img src="${pageContext.request.contextPath}/images/rank/2.png" width="85" height="15" /></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/shop4.jpg" width="190" height="140" /></a></li>
                </ul>
                <ul>
                	<li class="name"><a href="#">金锚传菜(新华路店)</a></li>
                    <li><img src="${pageContext.request.contextPath}/images/rank/2.png" width="85" height="15" /></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/shop5.jpg" width="190" height="140" /></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<a class="bshareDiv" href="http://www.bshare.cn/share">分享按钮</a><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#uuid=&amp;style=3&amp;fs=4&amp;textcolor=#fff&amp;bgcolor=#9C3&amp;text=分享到"></script>

<%@ include file="../include/footer.jsp"%>
</body>
</html>