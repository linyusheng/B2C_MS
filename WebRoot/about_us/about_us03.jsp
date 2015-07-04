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

<div class="mid3">
  <span class="mid_left">
  <div class="left_list">
        	<ul>
              <li>	
           		<a href="${pageContext.request.contextPath}/introduction" >本站介绍</a> 
                   
           	 </li>
              <li id="li2">
           		<a href="${pageContext.request.contextPath}/userAgreement" >用户使用协议</a>
              	
              </li>
              <li>
           		<a href="${pageContext.request.contextPath}/businAgreement" >商户服务协议</a>
                   
              </li>
              <li class="about_usindex">
           		<a href="${pageContext.request.contextPath}/property" >知识产权声明</a>
                    
              </li>
              <li class="last_line">
           		<a href="${pageContext.request.contextPath}/contactUs" >联系我们</a>
                  
              </li>
     		</ul>
       </div>
   </span>
   <span class="mid_right3">
   <p class="right_title1">知识产权声明
   </p>
   <p class="right_space30">易找宝网（www.yizhaobao.com）所提供的各项服务的所有权和运作权归韶关学院（以下简称"本学院"）。除特别说明或者法律另有特别规定者外，本学院是易找宝网及其中所刊登全部资料、信息的知识产权的唯一所有人。
  </p>

   <p class="right_space4">本网站所刊登的全部资料包括但不限于网站架构、程序设计、页面图文信息（包括并不限于商户描述、用户点评、照片图片、社区帖、用户简评、回应、榜单等），本站首页、点评周刊及各频道的专题内容，以及依据本网站独有的分析模型计算的商户星级、人均花费、口味、环境、服务分数、推荐菜/套系/产品等数据信息。
   </p>

   <p class="right_space2">除法律特别规定或者政府明确要求者外，在未取得本站书面明确许可前，任何单位或者个人不得将本网站的任何知识产权对象进行任何目的的使用。
   </p>
   <p class="right_space1">任何单位或个人不得以任何方式,以任何文字对本站资料作全部和局部复制、转载、引用和链接。
   </p>
   <p class="right_space3">任何单位或者个人不得以任何方式引诱本网站注册用户或者第三方复制转载本网站内容，或者同意该单位或者个人复制转载本网站内容。任何注册用户将在本网站注册用户名和密码提供给任何第三方用于许可其复制本站内容的，将构成对注册协议的违反，并可能导致其账户被关闭或者处罚。
   </p>
   <p class="right_space2">会员保证不将已发表于本站的信息资料，以任何形式发布或授权其它网站（及媒体）使用。同时，易找宝网保留删除站内各类不符合规定点评而不通知会员的权利。
   </p>

   <p class="right_space1">任何违反本站知识产权声明的行为，本站保留进一步追究法律责任的权利。
   </p>
 </span>
</div>
<%@ include file="../include/footer.jsp"%>

</body>
</html>