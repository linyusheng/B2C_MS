<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎来到商家中心！</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/busin_center.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/busin_center.js"></script>
<script type="text/javascript">
$(function(){
	var nav = $('.nav ul li');
	nav.removeClass('first');
	$('.nav ul li:eq(2)').addClass('first');
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
        	
            <div class="myStorehouse_right">
            	<div class="label"><label>商品列表</label></div>
                <div class="goods_sort">
                	<ul>
                    	<li><a href="#" class="sel_bg">全部</a></li>
                        <li><a href="#">咖啡</a></li>
                        <li><a href="#">奶茶</a></li>
                        <li><a href="#">冰红茶</a></li>
                        <li><a href="#">其它</a></li>
                    </ul>
                </div>
                <div class="goods_list">
                	<ul>
                		<s:iterator value="goodsList">
                    	<li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/goods/thumb (2).jpg" width="150" height="110" /></a>
                            <div class="goods_info">
                            	<p>商品名称：<s:property value="goodsName" /></p>
                                <p>商品类型：<s:property value="goodsType" /></p>
                              	<p>商品价格：<s:property value="goodsPrice" /> 元</p>
                                <p>
                                	<a href="#">编辑</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                                	<a href='<s:url action="deleteGoods"><s:param name="id" value="goodsId"></s:param></s:url>'>删除</a>
                                </p>
                            </div>
                        </li>
                        </s:iterator>
                    </ul>
                </div>
                
        </div>
        </div>
    </div>
    
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
