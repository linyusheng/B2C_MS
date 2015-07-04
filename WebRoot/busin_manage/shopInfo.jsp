<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改资料</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/busin_center.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/busin_center.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
<script type="text/javascript">
$(function(){
	var nav = $('.nav ul li');
	nav.removeClass('first');
	$('.nav ul li:eq(1)').addClass('first');
});
</script>
<base target="_self" />
</head>
<body>
	
	<%@ include file="../include/top.jsp"%>
	<div class="body">
      <%@ include file="header.jsp"%>
      
      <div class="main">
        	<%@ include file="left.jsp"%>
        	
            <div class="personInfo_right">
            	<div class="position">
                	<a href="${pageContext.request.contextPath}/baseInfo">个人主页</a> &nbsp;>>&nbsp;基本信息
                </div>
                <div class="info_nav">
                	<ul>
                    	<li><a href="${pageContext.request.contextPath}/baseInfo">基本信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/otherInfo">更多信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/safeInfo">修改密码</a></li>
                        <li class="on"><a href="${pageContext.request.contextPath}/shopInfo">商店信息</a></li>
                    </ul>
                </div>
            	<div class="acccountinfo">
                    <form action="saveShopInfo" method="post">
                    <ul>
                        <li class="left">商店名：</li>
                        <li class="right"><input name="shopName" value="<s:property value="shop.shopName"/>" type="text" maxlength="24" size="40"/></li>
            			<li class="left">类型：</li>
                        <li class="right">
                           <select id="big_type" name="bigType" onblur="changeType()" style=" margin-right:10px;">
                               <option value="1" >美食炊饮</option>
                               <option value="2">购物</option>
                               <option value="3">休闲娱乐</option>
                               <option value="4">电子数码</option>
                               <option value="5">运动健身</option>
                               <option value="6">酒店</option>
                               <option value="7">家装</option>
                               <option value="8">生活服务</option>
                           </select>
                           <select id="small_type" name="smallType">
                               <option value="9">粤菜</option>
                               <option value="10">西餐</option>
                               <option value="11">火锅</option>
                               <option value="12">自助餐</option>
                               <option value="13">小吃快餐</option>
                               <option value="14">其它</option>
                           </select>
                        </li>
                        
                        <li class="left">商店地址：</li>	
                        <li class="right"><input name="shopAddress" value="<s:property value="shop.shopAddress"/>" type="text" size="40" maxlength="24" /></li>
                        
        				<li class="left"></li>
                        <li class="right"><input type="submit" id="button" value="提交修改" /></li>
                    </ul>  
                    </form>
                </div>
            </div>
            
            </div>
        </div>
    </div>
    
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
