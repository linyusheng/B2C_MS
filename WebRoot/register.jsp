<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
</head>
<body>
<%@ include file="include/top.jsp"%>
<div class="content">
	<!--欢迎横幅-->
	<div class="welcome">
    	<a href="${pageContext.request.contextPath}/index"><img name="logo" src="images/logo.png" width="150" height="100"/></a>
        <div class="label_welcome">欢迎注册</div>
    </div>
    <!--注册选项卡-->
  	<div class="tab">
    	<div id="container">
        	<dl>
                <dt class="dt_left"></dt>
                <dd class="on" onclick="tab(0)">个人用户</dd>
                <dt class="dt_center"></dt>
                <dd class="out" onclick="tab(1)">商户</dd>
                <dt class="dt_right">我已经注册，现在就&nbsp;<a href="login.jsp">登录</a></dt>
       		</dl>
        </div>
        <!--------提示信息-------->
        <div id="tips"></div>
        <div id="tips_username"></div>
        <div id="tips_password"></div>
        <div id="tips_check_password"></div>
        <div id="tips_agreeprovision"></div>
        <div id="tips_business_name"></div>
        <div id="tips_business_password"></div>
        <div id="tips_business_check_password"></div>
        <div id="tips_real_name"></div>
        <div id="tips_telephone"></div>
        <div id="tips_identify"></div>
        <div id="tips_e-mail"></div>
        <div id="tips_shopName"></div>
        <div id="tips_shopAddress"></div>
        <div id="tips_business_agreeprovision"></div>
        <!--------用户注册-------->
        <div id="content1">
        <form action="register" name="userForm" onsubmit="return content1_formCheck();" method="post" >
			<s:hidden name="user.role.roleId" value="2"></s:hidden>
			<s:hidden name="user.role.roleName" value="普通用户"/>
	        <s:hidden name="user.role.rolePermission" value="管理用户模块"/>
			<s:hidden name="user.sex" value="保密"></s:hidden>
			<s:hidden name="user.rank" value="1"></s:hidden>
			<s:hidden name="user.score" value="100"></s:hidden>
			<s:hidden name="user.photo" value="default.png"></s:hidden>
			<s:hidden name="user.signNumber" value="0"></s:hidden>
			<s:hidden name="user.maritalStatus" value="保密"></s:hidden>
			
			<div class="form_item">
				<label for="username"><font color="#FF0000">*</font>账户名:</label>
                <input name="user.userName" type="text" id="username" onfocus="tips('username','账号不能超过20个字符或者10个中文字')" onblur="outTips('username')" class="input_text" tabindex="1" maxlength="20" style="color:#999"/>
            </div>
          	<div class="form_item">
				<label for="password"><font color="#FF0000">*</font>设置密码:</label>
                <input name="user.password" type="password" id="password" onfocus="tips('password','密码长度6-16个字符')" onblur="outTips('password')" class="input_text" tabindex="2" maxlength="16" onpaste="return false;"/>
            </div>
            <div class="form_item">
				<label for="check_password"><font color="#FF0000">*</font>确认密码:</label>
                <input name="upass" type="password" id="check_password" onfocus="tips('check_password','请再次输入密码')" onblur="outTips('check_password')" class="input_text" tabindex="3" maxlength="16" onpaste="return false;"/>
            </div>
            <div class="form_item">
				<label></label>
                <div id="agreeprovision">
                    <input type="checkbox" checked="checked" id="checkbox" onclick="hiddenCheckboxTips('tips_agreeprovision')" class="input_check" tabindex="4" />
                    <label for="checkbox" class="readme">我已阅读并同意<a href="#" target="_blank">《用户注册协议》</a></label>
                </div>
            </div>
            <div class="form_item">
            	<label></label>
                <input value="立即注册" type="submit"  class="input_button" tabindex="5"  />
            </div>
        </form>
        </div>
        <!---------商户注册--------->
        <div id="content2">
        	<form action="register" name="businForm" onsubmit="return content2_formCheck();" method="post">
        		<s:hidden name="user.role.roleId" value="3"></s:hidden>
        		<s:hidden name="user.role.roleName" value="商户"/>
		        <s:hidden name="user.role.rolePermission" value="管理商户模块"/>
				<s:hidden name="user.sex" value="保密"></s:hidden>
				<s:hidden name="user.rank" value="1"></s:hidden>
				<s:hidden name="user.score" value="100"></s:hidden>
				<s:hidden name="user.photo" value="default.png"></s:hidden>
				<s:hidden name="user.signNumber" value="0"></s:hidden>
				<s:hidden name="user.maritalStatus" value="保密"></s:hidden>

				<div class="form_item">
					<label for="business_name"><font color="#FF0000">*</font>商户名:</label>
	                <input name="user.userName" type="text" id="business_name" onfocus="tips('business_name','商户名不能超过20个字符或者10个中文字')" onblur="outTips('business_name')" class="input_text" tabindex="1" maxlength="20" />
	            </div>
	            <div class="form_item">
					<label for="business_password"><font color="#FF0000">*</font>设置密码:</label>
	                <input name="user.password" type="password" id="business_password" onfocus="tips('business_password','密码长度6-16个字符')" onblur="outTips('business_password')" class="input_text" tabindex="2" maxlength="16" onpaste="return false;"/>
	            </div>
	            <div class="form_item">
					<label for="business_check_password"><font color="#FF0000">*</font>确认密码:</label>
	                <input name="upass" type="password" id="business_check_password" onfocus="tips('business_check_password','请再次输入密码')" onblur="outTips('business_check_password')" class="input_text" tabindex="3" maxlength="16" onpaste="return false;"/>
	            </div>
	            <label class="information">联系人信息</label>
	            <div class="form_item">
					<label for="real_name"><font color="#FF0000">*</font>联系人姓名:</label>
	                <input name="user.realName" type="text" id="real_name" onfocus="tips('real_name','必须填写真实姓名')" onblur="outTips('real_name')" class="input_text" tabindex="1" maxlength="20" />
	            </div>
	            <div class="form_item">
				<label for="telephone"><font color="#FF0000">*</font>电话:</label>
                <input name="user.phone" type="text" id="telephone" onfocus="tips('telephone','请填写联系人常用的电话，以便于我们联系')" onblur="outTips('telephone')" class="input_text" tabindex="1" maxlength="20"/>
            </div>
            <div class="form_item">
				<label for="identify"><font color="#FF0000">*</font>身份证号:</label>
                <input name="user.identify" type="text" id="identify" onfocus="tips('identify','必须填写有效的身份证号')" onblur="outTips('identify')" class="input_text" tabindex="1" maxlength="20"/>
            </div>
	           <div class="form_item">
				<label for="e-mail"><font color="#FF0000">*</font>电子邮箱:</label>
                <input name="user.email" type="email" id="e-mail" onfocus="tips('e-mail','必须填写有效的电子邮箱')" onblur="outTips('e-mail')" class="input_text" tabindex="1" maxlength="20"/>
            </div>
	            <label class="information">商场信息</label>
	            <div class="form_item">
				<label for="shopName"><font color="#FF0000">*</font>商店名:</label>
                <input name="shop.shopName" type="text" id="shopName" onfocus="tips('shopName','填写你的商店名')" onblur="outTips('shopName')" class="input_text" tabindex="1" maxlength="50"/>
            </div>
            <div class="form_item">
				<label for="type"><font color="#FF0000">*</font>类型:</label>
                <div class="box">
                <select id="big_type" name="bigType" onblur="changeType()">
                	<option value="1" selected="selected">美食炊饮</option>
                    <option value="2">购物</option>
                    <option value="3">休闲娱乐</option>
                    <option value="4">电子数码</option>
                    <option value="5">运动健身</option>
                    <option value="6">酒店</option>
                    <option value="7">家装</option>
                    <option value="8">生活服务</option>
                </select>
                </div>
                <div class="box">
                <select id="small_type" name="smallType">
                	<option value="9">粤菜</option>
                    <option value="10">西餐</option>
                    <option value="11">火锅</option>
                    <option value="12">自助餐</option>
                    <option value="13">小吃快餐</option>
                    <option value="14">其它</option>
                </select>
                </div>
            </div>
	            <div class="form_item">
				<label for="shopAddress"><font color="#FF0000">*</font>商店地址:</label>
                <input name="shop.shopAddress" type="text" id="shopAddress" onfocus="tips('shopAddress','请填写商店地址')" onblur="outTips('shopAddress')" class="input_text" tabindex="1" maxlength="100"/>
            </div>
	            <div class="form_item">
					<label></label>
	                <div id="business_agreeprovision">
	                    <input type="checkbox" checked="checked" id="business_checkbox" onclick="hiddenCheckboxTips('tips_business_agreeprovision')" class="input_check" tabindex="4" />
	                    <label for="business_checkbox" class="readme">我已阅读并同意<a href="#" target="_blank">《用户注册协议》</a></label>
	                </div>
	            </div>
	            <div class="form_item">
	            	<label></label>
	                <input value="立即注册" type="submit"  class="input_button" tabindex="5"  />
	            </div>
            </form>
        </div>
    </div>
</div>
<%@ include file="include/footer.jsp"%>
</body>
</html>