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

<div class="mid4">
  <span class="mid_left">
  <div class="left_list">
        	<ul>
              <li>	
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
              <li class="about_usindex">
           		<a href="${pageContext.request.contextPath}/contactUs" >联系我们</a>
                  
              </li>
     		</ul>
       </div>
   </span>
   <span class="mid_right4">
    <p class="right_title1">联系我们</p>
    <br />
    <br />
    <br />


  <p class="right_space1">如有任何问题，您可以通过以下方式联系我们，欢迎您联系我们。
  </p>
  <br />
  <p class="right_space1">邮寄地址：广东省韶关市浈江区大学路韶关学院
  </p>
  <p class="right_space1">邮政编码：512005
  </p>
  <p class="right_space1">收件人：易找宝网客服部
  </p>
  <p class="right_space1">服务邮箱
  </p>
  <p class="right_space1">• 您也可以发送邮件至 yizhaobao@163.com(我们会在两个工作日内与您联系)
  </p>
  </span>
</div>
<%@ include file="../include/footer.jsp"%>

</body>
</html>