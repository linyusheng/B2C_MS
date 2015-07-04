<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>创建圈子</title>
<base target="_self" />
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/community.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/manhuaInputLetter.1.0.js"></script>
<script type="text/javascript">
$(function (){
	$("#area_summary").manhuaInputLetter({		     
		len :255,//限制输入的字符个数				
		showId : "summary"//显示剩余字符文本标签的ID
	});
});
$(function (){
	$("#area_application").manhuaInputLetter({		     
		len :255,//限制输入的字符个数				
		showId : "application"//显示剩余字符文本标签的ID
	});
});
</script>
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
<div class="circle_mid">
	<form action="save" method="post" enctype="multipart/form-data">
	<div class="circle_mid_top">
      <span class="big_font">创建一个圈子&nbsp;&nbsp;</span><i>欢迎你先在 <a href="#" class="color">热门圈子</a> 中发现喜欢的圈子。</i>
      <p>欢迎在yizhaobao圈子这个快乐和谐的地方，聚集和你爱好相同，品位相当的好朋友，畅谈交流，分享心情，享受生活！</p>
    </div>
    <div class="circle_mid_mid">
      <div class="list_label">最多可创建圈子数：<span class="color">6</span>
      </div>
      <div class="list_label">已经创建圈子：<span class="color">0</span>
      </div>
      <div class="list_label">最多可加入圈子数：<span class="color">12</span>
      </div>
      <div class="list_label">已经加入圈子数：<span class="color">0</span>
      </div>
	</div>
   <div class="circle_mid_form">
   	<div id="circle_sort">
    	<div class="circle_form_label">
        	所属分类：
        </div>
        <div class="sort_select">
        	<s:radio name="community.communityType" list="#{'美食炊饮':'美食炊饮','购物':'购物','休闲娱乐':'休闲娱乐','电子数码':'电子数码'}"></s:radio><br />
            <s:radio name="community.communityType" list="#{'运动健身':'运动健身','酒店':'酒店','家装':'家装','生活服务':'生活服务'}"></s:radio>
            <div class="circle_form_tips">
            	根据您的圈子主题类型，选择适当的分类。
        	</div>
        </div>	
    </div>
    <div id="circle_name">
        	<div class="circle_form_label">
            	<font color="#FF0000">*</font>圈子名称：
            </div>
             <div class="circle_form_text">
             <input type="text" name="community.communityName" class="text"  />
               <div class="circle_form_tips">规定使用4~12个字符，确定后不可修改。	</div>
      		</div>
    </div>
    <div id="circle_photo">
        	<div class="circle_form_label">
            	<font color="#FF0000">*</font>圈子图片：
            </div>
             <div class="circle_form_text">
             	<input type="text" id="photoPath"/>
               	<input type="button" onclick="myfile.click();" value="选择图片" id="select"/>
           		<input type="file" id="myfile" name="upload"  onchange="photoPath.value=this.value" style="display:none" />
      		</div>
    </div>
    <div id="circle_summary">
    		<div class="circle_form_label">
            	圈子简介：
            </div>
      		<div class="circle_form_area">
            	<textarea name="community.communityIntroduction"  id="area_summary" maxlength="255"></textarea>
                您还可以输入：<span id="summary"></span>&nbsp;字
              <div class="circle_form_tips">对您建立的圈子进行简单的文字介绍，创建后圈主可做修改，字数不超过255字。</div>
            </div>
     </div>
     <div id="circle_label">
        	<div class="circle_form_label">圈子标签：
            </div>
             <div class="circle_form_text">
            	<input type="text" name="community.communityLabel"  class="text"  />
            	<div class="circle_form_tips" >建立圈子标签有利于全局搜索查找到您的圈子，多个标签请用","进行分隔。</div>
      		</div>
    </div>
    <div id="reason_application">
    		<div class="circle_form_label">申请理由：</div>
      		<div class="circle_form_area">
           	  <textarea name="community.addReason" id="area_application" maxlength="255"></textarea>
                您还可以输入：<span id="application"></span>&nbsp;字
              <div class="circle_form_tips" >认真填写申请圈子的理由提交至平台，以确保管理人员及时审核并通过，字数不要超过255字。</div>
            </div>
     </div>
     <div id="circle_clause">
         <div class="circle_form_label"></div>
         <div class="circle_form_check">
         <input type="checkbox" checked="checked" />我已认真阅读并同意《<a target="_blank" href="#" class="color">圈子使用须知</a>》中的所有条款
   	 	</div>
     </div>
     <div id="circle_submit">
     	<div class="circle_form_label"></div>
        <div class="circle_form_button">
        	<input type="submit" value="提交申请" />
        </div>
     </div>
     </form>
</div>
</div>

<%@ include file="../include/footer.jsp"%>
</body>
</html>