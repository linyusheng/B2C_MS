<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台管理系统</title>
<jsp:include page="include.jsp"></jsp:include>
<script type="text/javascript" charset="utf-8">
	var tree;
	var tab;
	$(function(){
		$.messager.show( {
			title : '欢迎',
			msg : '<center style="line-height:40px;">欢迎来到易找宝管理中心！</center>',
			timeout : 4000,
			showType : 'slide',
		});
		tree = $('#menu').tree({
			url : '${pageContext.request.contextPath}/admin/controlMenu?controlMenu',
			onLoadSuccess:function(node, data){
				var t = $(this);
				if(data){
					$(data).each(function(index,dom){
						if(this.state == 'closed' ){
							t.tree('expandAll');
						}
					});
				}
			},
			onClick: function(node){
				if(tab.tabs('exists',node.text)){
					tab.tabs('select',node.text);
				}else{
					if(node.attributes && node.attributes.length > 0){
						tab.tabs('add',{
							title : node.text,
							closable : true,
							content : '<iframe src="' +'${pageContext.request.contextPath}/admin-manage/' + node.attributes + '" frameBorder="0" allowTransparency="true" style="border:0;width:100%;height:99%;"></iframe>'
						});
					}
				}
			},
			onDblClick : function(node){
				if(node.state == 'open'){
					tree.tree('collapse',node.target);
				}else{
					tree.tree('expand',node.target);
				}
			}
		});
		tab = $("#tab").tabs({
			fit : true,
			border : false
		});
		
	});
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',href:'${pageContext.request.contextPath}/admin-manage/north.jsp'" style="height:100px;overflow:hidden;"></div>
    <div data-options="region:'west',title:'导航栏',split:true" style="width:200px;padding:7px;">
    	<ul id="menu"></ul>
    </div>
    <div data-options="region:'center'" style="overflow:hidden;background:#eee;">
    	<div id="tab">
			<div title="首页" href="" style="overflow:hidden"></div>
		</div>
    </div>
    <div data-options="region:'east',iconCls:'icon-message',title:'在线用户',split:true,href:'${pageContext.request.contextPath}/admin-manage/east.jsp'" style="width:200px;"></div>
    <div data-options="region:'south',split:true" style="height:50px;">
    	<p style="text-align:center"><label style="font-family:arial;">&copy;</label>&nbsp;Copyright&nbsp;2012-2014, 版权所有 <a href="" style="text-decoration: none">易找宝</a></p>
    </div>
</body>
</html>