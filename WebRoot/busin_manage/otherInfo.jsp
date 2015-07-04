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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/timeSelect.js"></script>
<script type="text/javascript">
jQuery(function(){
	var nav = jQuery('.nav ul li');
	nav.removeClass('first');
	jQuery('.nav ul li:eq(1)').addClass('first');
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
                        <li class="on"><a href="${pageContext.request.contextPath}/otherInfo">更多信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/safeInfo">修改密码</a></li>
                        <li><a href="${pageContext.request.contextPath}/shopInfo">商店信息</a></li>
                    </ul>
                </div>
            	<div class="acccountinfo">
                    <form action="saveBusinOtherInfo" method="post">
                    	<s:hidden name="user.userId"/>
			        	<s:hidden name="user.userName"/>
			        	<s:hidden name="user.password"/>
			        	<s:hidden name="user.role.roleId"/>
			        	<s:hidden name="user.role.roleName"/>
			        	<s:hidden name="user.role.rolePermission"/>
			        	<s:hidden name="user.sex"/>
			        	<s:hidden name="user.address"/>  
			        	<s:hidden name="user.photo"/>
			        	<s:hidden name="user.phone"/> 
			        	<s:hidden name="user.email"/>
			        	<s:hidden name="user.realName"/>
			        	<s:hidden name="user.identify"/> 
			        	<s:hidden name="user.signature"/>
			        	<s:hidden name="user.rank"/>
			        	<s:hidden name="user.score"/>
			        	<s:hidden name="user.signNumber"/>
			        	<s:hidden name="user.lastLoginTime"/>
			        	<s:hidden name="user.registerTime"/>
                    <ul>
                        <li class="left">生日：</li>		
                        <li class="right">
                        	<s:textfield name="user.birthday" readonly="true" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" id="birthday">
                        	<s:param name="value"><s:date name="user.birthday" format="yyyy-MM-dd"/></s:param>
                    		</s:textfield> 
                        </li>
                        <li class="left">QQ：</li>	
                            <li class="right">
                                <input type="text" name="user.qq" value="<s:property value="user.qq"/>"/>
                            </li>
                        <li class="left">婚姻状况：</li>	
                            <li class="right">
                                <s:radio name="user.maritalStatus" list="#{'保密':'保密','未婚':'未婚','已婚':'已婚'}"></s:radio>
                            </li>
                        <li class="left">月收入：</li>	
                            <li class="right">
                                <s:select name="user.income" list="{'无收入','2000元以下','2000-3999元','4000-5999元','6000-7999元','8000元以上'}"></s:select>
                            </li>
                        <li class="left">职位：</li>
                            <li class="right">
                                <s:select name="user.position" list="{'学生','老师','医生','政府人员','IT人员','其它'}"></s:select>
                            </li>
                        <li class="left">个人爱好：</li>	
                            <li class="right">
                                <textarea name="user.hobby" placeholder="150字以内"><s:property value="user.hobby"/></textarea>
                            </li>
                        <li class="left">自我介绍：</li>	
                            <li class="right">
                                <textarea name="user.introduction" placeholder="180字以内"><s:property value="user.introduction"/></textarea>
                            </li>
                        <li class="left"></li>
                        <li class="right"><input type="submit" id="button" value="提交修改" /></li>
                    </ul>  
                    </form>
                </div>
            </div>
        </div>
    </div>
    
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
