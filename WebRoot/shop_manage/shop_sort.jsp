<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商店分类</title>
<base target="_self" />
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/shop_sort.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/include.js"></script>
<script type="text/javascript">
	//分页查询
	function searchForPage(page) {
		document.selectform.currentpage.value = page;
		if (document.selectform.currentpage.value != null) {
			document.selectform.submit();
		} else {
			window.alert("当前页面值不能为空!");
		}
	}
</script>
</head>
<body>
<%@ include file="../include/top.jsp"%>
<%@ include file="../include/head.jsp"%>
<!--body-->
<div class="home">
<!--body左部分-->
    <span class="home_left">
    	<div class="nav_market">商场导航</div>
       	<%@ include file="../include/sort.jsp"%>
    </span>
<!--body中部分-->
	<s:form id="selectform" action="shopSort" method="post">
	<s:hidden name="typeId"/>
	<s:hidden id="currentpage" name="pageBean.currentPage" label="ID" />
    <span class="home_center">
 		<div class="label">
 			<font>分类:</font>
 			<s:if test="%{shoptype.typeId < 9}">
 				<s:property value="shoptype.typeName"/>
 			</s:if>
 			<s:else>
 				<s:property value="parentType"/> >> <s:property value="shoptype.typeName"/>
 			</s:else>
 			
 		</div>
        <div><hr /></div>
        <div class="ad_vendor">
        <ul>
        	<s:iterator value="shopColl">
			<li>
              	<div class="businPhoto">
              		<img src="<s:url action="downlaodShopPhoto">
              				  <s:param name="fileName" value="shopPhoto" />
              				  <s:param name="typeId" value="shoptype.typeId"/>
              				  </s:url>" width="166" height="120" />
              	</div>
                <div class="VendorInfo">
                	<h2>
                		<a href="<s:url action="enterShop">
                				 <s:param name="id" value="shopId" />
                				 </s:url>">
                		<s:property value="shopName"></s:property>
                		</a>
                	</h2>
				           点评度：<s:property value="comemtCount"></s:property>封<br />
					地址：<s:property value="shopAddress"></s:property><br />
					标签：<s:property value="shopLabel"></s:property>
              	</div>
	        </li>
	        </s:iterator>
        </ul>
        </div>
        <jsp:include flush="true" page="../include/selectbypage.jsp"></jsp:include>
    </span>
    </s:form>
    <!--body右部分-->
    <span class="home_right">
        <div class="ad_map">
        	<a href="${pageContext.request.contextPath}/searchShop"><img src="${pageContext.request.contextPath}/images/map.png" width="173" height="173" /></a>
        </div>
    </span>
</div>
<%@ include file="../include/footer.jsp"%>

</body>
</html>