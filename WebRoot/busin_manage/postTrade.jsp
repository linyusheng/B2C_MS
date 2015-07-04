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
	$('.nav ul li:eq(3)').addClass('first');
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
        	
            <div class="postTrade_right">
            	<div class="label"><label>发布商品</label></div>
                <div class="acccountinfo">
                    <form action="saveGoods" method="post" enctype="multipart/form-data">
                    <ul>
                        <li class="left"><label>*&nbsp;</label>商品名称：</li>	
                        <li class="right"><input type="text" name="goods.goodsName" size="25"/></li>
                        
                        <li class="left"><label>*&nbsp;</label>商品图片：</li>	
                        <li class="right">
                            <input type="text" id="photoPath" size="25"/>
			               	<input type="button" onclick="myfile.click();" value="选择图片" id="button" style="margin-left:10px;"/>
			           		<input type="file" id="myfile" name="upload"  onchange="photoPath.value=this.value" style="display:none" />
                        </li>
                        
                        <li class="left"><label>*&nbsp;</label>商品类型：</li>	
                        <li class="right"><input type="text" name="goods.goodsType" id="goodsType" size="17"/></li>
                        
                        <li class="left"><label>*&nbsp;</label>商品状态：</li>
                        <li class="right"><s:select name="goods.goodsStatus" list="{'有货','无货'}" style="width:86px;"></s:select></li>
                        
                        <li class="left"><label>*&nbsp;</label>商品价格：</li>
                        <li class="right"><input type="text" name="goods.goodsPrice" size="8"/></li>
                        
                        <li class="left"><label>*&nbsp;</label>商品库存：</li>
                        <li class="right"><input type="text" name="goods.goodsRepertory" size="8"/></li>
                        
                        <li class="left">商品描述：</li>	
                        <li class="right">
                            <textarea placeholder="50字以内" rows="8" cols="50"></textarea>
                        </li>
                        
                        <li class="left"></li>
                        <li class="right"><input type="submit" id="button" value="发布" /></li>
                    </ul>  
                    </form>
                </div>
            </div>
        </div>
    </div>
    
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
