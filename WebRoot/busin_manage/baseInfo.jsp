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
                    	<li class="on"><a href="${pageContext.request.contextPath}/baseInfo">基本信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/otherInfo">更多信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/safeInfo">修改密码</a></li>
                        <li><a href="${pageContext.request.contextPath}/shopInfo">商店信息</a></li>
                    </ul>
                </div>
            	<div class="acccountinfo">
            	<ul>
                    <s:form action="saveBusinBaseInfo" method="post" enctype="multipart/form-data">
                    	<s:hidden name="user.userId"/>
			        	<s:hidden name="user.userName"/>
			        	<s:hidden name="user.password"/>
			        	<s:hidden name="user.role.roleId"/>
			        	<s:hidden name="user.role.roleName"/>
			        	<s:hidden name="user.role.rolePermission"/>
			        	<s:hidden name="user.photo"/> 
			        	<s:hidden name="user.qq"/>
			        	<s:hidden name="user.birthday"/>
			        	<s:hidden name="user.hobby"/>
			        	<s:hidden name="user.position"/>
			        	<s:hidden name="user.income"/>
			        	<s:hidden name="user.introduction"/>
			        	<s:hidden name="user.maritalStatus"/>
			        	<s:hidden name="user.rank"/>
			        	<s:hidden name="user.score"/>
			        	<s:hidden name="user.signature"/>
			        	<s:hidden name="user.signNumber"/>
			        	<s:hidden name="user.lastLoginTime"/>
			        	<s:hidden name="user.registerTime"/>

                        <li class="left"><label>*&nbsp;</label>账户名：</li>	
                        <li class="right"><s:property value="user.userName"/></li>
                        
                        <li class="left">修改头像：</li>	
                        <li class="right">
                            <input type="text" name="" id="photoPath" maxlength="255"/>
                            <input type="button" onclick="myfile.click();" value="选择图片" id="button" style="margin-left:10px;"/>
                            <input type="file" id="myfile" name="upload"  onchange="photoPath.value=this.value" style="display:none" />
                        </li>
                        
                        <li class="left"><label>*&nbsp;</label>邮箱：</li>	
                        <li class="right">
                            <input type="email" name="user.email" value="<s:property value="user.email"/>"/>
                        </li>
                        
                        <li class="left">性别：</li>		
                        <li class="right">
                            <s:radio name="user.sex" list="#{'保密':'保密','男':'男','女':'女'}"></s:radio>
                        </li>
                        
                        <li class="left"><label>*&nbsp;</label>电话：</li>		
                        <li class="right">
                            <input name="user.phone" type="text" value="<s:property value="user.phone"/>" maxlength="11"/>
                        </li>
                        
                        <li class="left"><label>*&nbsp;</label>真实姓名：</li> 	
                        <li class="right">
                            <input type="text" name="user.realName" value="<s:property value="user.realName"/>"/>
                        </li>
                        
                        <li class="left"><label>*&nbsp;</label>身份证号：</li> 	
                        <li class="right">
                            <input type="text" name="user.identify" value="<s:property value="user.identify"/>" size="25"/>
                        </li>
                        
                        <li class="left">所在地区：</li>	
                        <li class="right">
                        	<input type="text" name="user.address" value="<s:property value="user.address"/>" style="width:300px;" placeholder="请输入您居住的城市"/>
                        </li>
                        
                        <li class="left"></li>
                        <li class="right"><input type="submit" id="button" value="提交修改" /></li>
                    
                    </s:form>
                </ul>
                </div>
            </div>
        </div>
    </div>
    
	<%@ include file="../include/footer.jsp"%>
	
</body>
</html>
