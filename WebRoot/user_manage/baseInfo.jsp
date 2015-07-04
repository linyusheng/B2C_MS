<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户中心</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/user_center.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="../include/top.jsp"%>
<%@ include file="shared_head.jsp"%>
<div id="content">
	<!--左部份内容-->
	<%@ include file="shared_left.jsp"%>
    <!--右部份内容-->
	<div  id="content_right" class="content_right">
    	<div class="title_right">基本信息</div>
		<ul>
		<s:form action="saveBaseInfo" method="post" enctype="multipart/form-data">
        	<s:hidden name="user.userId"/>
        	<s:hidden name="user.userName"/>
        	<s:hidden name="user.password"/>
        	<s:hidden name="user.role.roleId"/>
        	<s:hidden name="user.role.roleName"/>
        	<s:hidden name="user.role.rolePermission"/>
        	<s:hidden name="user.photo"/> 
        	<s:hidden name="user.phone"/>
        	<s:hidden name="user.realName"/>
        	<s:hidden name="user.identify"/>
        	<s:hidden name="user.qq"/>
        	<s:hidden name="user.birthday"/>
        	<s:hidden name="user.hobby"/>
        	<s:hidden name="user.position"/>
        	<s:hidden name="user.income"/>
        	<s:hidden name="user.introduction"/>
        	<s:hidden name="user.maritalStatus"/>
        	<s:hidden name="user.rank"/>
        	<s:hidden name="user.score"/>
        	<s:hidden name="user.signNumber"/>
        	<s:hidden name="user.lastLoginTime"/>
        	<s:hidden name="user.registerTime"/>
	        	
        	<li class="left">会员类型：</li>
        	<li class="right"><s:property value="user.role.roleName"/></li>
        	
   	  		<li class="left"><label>*&nbsp;</label>账户名：</li>	 
   	  		<li class="right"><s:property value="user.userName"/></li>
   	  		
   	  		<li class="left">修改头像：</li>	
           	<li class="right">
               	<input type="text" id="photoPath"/>
               	<input type="button" onclick="myfile.click();" value="选择图片" id="select"/>
           		<input type="file" id="myfile" name="upload"  onchange="photoPath.value=this.value" style="display:none" />
            </li>
   	  		
			<li class="left"><label>*&nbsp;</label>邮箱：</li>	
            <li class="right"><input type="email" name="user.email" id="email" value="<s:property value="user.email"/>"/></li>
            
   	  		<li class="left">性别：</li>
            <li class="right"><s:radio name="user.sex" list="#{'保密':'保密','男':'男','女':'女'}"></s:radio></li>
            
            <li class="left">常居地：</li>	
            <li class="right">
            	<input type="text" name="user.address" id="address" value="<s:property value="user.address"/>" style="width:300px;" placeholder="请输入您居住的城市"/>
            </li>
            
            <li class="left">个性签名：</li>
            <li class="right">
            	<textarea name="user.signature" placeholder="50字以内" id="signature"  rows="8" cols="50"><s:property value="user.signature"/></textarea>
            </li>
            
            <li class="left"></li>
            <li class="right"><input type="submit" id="submit" value="提交修改" /></li>
            
        </s:form>
        </ul>
    </div>
</div>

	<%@ include file="../include/footer.jsp"%>
	<!-- 加载javascript处 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/messages_zh.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/user_center.js"></script>
	<script>
		$(function(){
		$('#ul_myInfo').css('display','block');
		Main(1);
		$('.list_button ul li a:eq(0)').css({"background":"#EE0000"});
		});
	</script>
</body>
</html>