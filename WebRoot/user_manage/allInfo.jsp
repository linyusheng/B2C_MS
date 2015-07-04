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
	    	<div class="title_right">完善信息</div>
			<ul>
	        <s:form action="saveMessage" id="form_allInfo" method="post" enctype="multipart/form-data">
	        	<s:hidden name="user.userId"/>
	        	<s:hidden name="user.userName"/>
	        	<s:hidden name="user.password"/>
	        	<s:hidden name="user.role.roleId"/>
	        	<s:hidden name="user.role.roleName"/>
	        	<s:hidden name="user.role.rolePermission"/>
	        	<s:hidden name="user.sex"/>
	        	<s:hidden name="user.address"/>  
	        	<s:hidden name="user.photo"/> 
	        	<s:hidden name="user.email"/> 
	        	<s:hidden name="user.signature"/>
	        	<s:hidden name="user.rank"/>
	        	<s:hidden name="user.score"/>
	        	<s:hidden name="user.signNumber"/>
	        	<s:hidden name="user.lastLoginTime"/>
	        	<s:hidden name="user.registerTime"/>
	        	
	        	<li class="left">生日：</li>		
	            <li class="right">
	            	<s:textfield name="user.birthday" readonly="true" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" id="birthday">
                        <s:param name="value"><s:date name="user.birthday" format="yyyy-MM-dd"/></s:param>
                    </s:textfield> 
	            </li>

	            <li class="left">电话：</li>
            	<li class="right">
                	<input type="text" name="user.phone" id="phone" value="<s:property value="user.phone"/>" placeholder="如：18316022547"/>
                </li>
                
	            <li class="left">QQ：</li>	
            	<li class="right">
                    <input type="text" name="user.qq" id="QQ" value="<s:property value="user.qq"/>" placeholder="如：2275755329"/>
                </li>
                
	            <li class="left">真实姓名：</li> 	
            	<li class="right">
                	<input type="text" name="user.realName" id="realName" value="<s:property value="user.realName"/>" placeholder="如：林玉生"/>
                </li>
                
	            <li class="left">身份证号：</li> 	
	            <li class="right">
	            	<input type="text" name="user.identify" id="identify" value="<s:property value="user.identify"/>" placeholder="如：440923199912121234" size="25"/>
	            </li>
                
	        	<li class="left">婚姻状况：</li>	
            	<li class="right">
            		<s:radio name="user.maritalStatus" list="#{'保密':'保密','未婚':'未婚','已婚':'已婚'}"></s:radio>
                </li>
                
	            <li class="left">月收入：</li>	
            	<li class="right">
            		<s:select name="user.income" list="{'无收入','2000元以下','2000-3999元','4000-5999元','6000-7999元','8000元以上'}" id="income"></s:select>
            	</li>
                
	            <li class="left">职位：</li>
            	<li class="right">
            		<s:select name="user.position" list="{'学生','老师','医生','政府人员','IT人员','其它'}" id="position"></s:select>
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
	            <li class="right"><input type="submit" id="submit" value="提交修改" /></li>
	        
	        </s:form>
	        </ul>
	    </div>
	</div>

	<%@ include file="../include/footer.jsp"%>
	<!-- 加载javascript处 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/timeSelect.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/user_center.js"></script>
	<script>
		//导入jquery.min.js先，再导入timeSelect.js,使用jQuery时，用jQuery代替$，来解决jQuery的$冲突问题！
		jQuery(function(){
		jQuery('#ul_myInfo').css('display','block');
		Main(1);
		jQuery('.list_button ul li a:eq(0)').css({"background":"#EE0000"});
		});
	</script>
	
</body>
</html>