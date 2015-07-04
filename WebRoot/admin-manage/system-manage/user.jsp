<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台管理系统</title>
<jsp:include page="../include.jsp"></jsp:include>
<script type="text/javascript" charset="utf-8">
	var datagrid;
	var editRow = undefined;
	$(function() {
		datagrid = $("#datagrid").datagrid({
			url : '${pageContext.request.contextPath}/admin/datagrid?datagrid',
			title : '',
			iconCls : 'icon-save',
			pagination : true,
			pageSize : 10,
			pageList : [ 10, 20, 30, 40 ],
			fit : true,
			fitColumns : true,
			nowarp : false,
			border : false,
			idField : 'userId',
			sortName : 'userId',
			sortOrder : 'asc',
			columns : [ [ {
				title : '编号',
				field : 'userId',
				width : 100,
				sortable : true,
				checkbox : true
			}, {
				title : '姓名',
				field : 'userName',
				width : 100,
				editor : {
					type : 'validatebox',
					options : {
						required : true
					}
				},
				formatter: function(value,rowData,rowIndex){
					return '<span title="'+value+'">'+value+'</span>';
				}
			}, {
				title : '性别',
				field : 'sex',
				width : 100,
				editor : {
					type : 'validatebox',
					options : {
						required : true
					}
				}
			}, {
				title : '电话',
				field : 'phone',
				width : 100,
				editor : {
					type : 'validatebox',
					options : {
						required : true
					}
				}
			}, {
				title : '邮箱',
				field : 'email',
				width : 100,
				editor : {
					type : 'validatebox',
					options : {
						required : true
					}
				}
			}, {
				title : '注册时间',
				field : 'registerTime',
				width : 100,
				editor : {
					type : 'datetimebox',
					options : {
						required : true
					}
				}
			} ] ],
			toolbar : [
					{
						text : '增加',
						iconCls : 'icon-add',
						handler : function() {
							if (editRow != undefined) {
								datagrid.datagrid('endEdit', editRow);
							}
							if (editRow == undefined) {
								datagrid.datagrid('addEditor',{
									field:'userName',
									editor:{
										type : 'validatebox',
										options : {
											required : true
										}
									} 
								});
								datagrid.datagrid('insertRow', {
									index : 0,
									row : {
										userId : Math.uuid()
									}
								});
								datagrid.datagrid('beginEdit', 0);
								editRow = 0;
							}
						}
					},
					'-',
					{
						text : '删除',
						iconCls : 'icon-remove',
						handler : function() {
							var rows = datagrid.datagrid('getSelections');
							if(rows.length > 0){
								$.messager.confirm('请确认','您确定要删除当前所有选择的项目么？',function(b){
									if(b){
										var ids = [];
										for(var i = 0;i<rows.length;i++){
											ids.push(rows[i].userId);
										}
										console.info(ids.join(','));
									}
								});
							}else{
								$.messager.alert('提示','请选择要删除的记录！','error');
							}
						}
					},
					'-',
					{
						text : '修改',
						iconCls : 'icon-edit',
						handler : function() {
							var rows = datagrid.datagrid('getSelections');
							if (rows.length == 1) {
								datagrid.datagrid('removeEditor','userName');
								if (editRow != undefined) {
									datagrid.datagrid('endEdit',editRow);
								}
								if (editRow == undefined) {
									var index = datagrid.datagrid('getRowIndex', rows[0]);
									datagrid.datagrid('beginEdit',index);
									editRow = index;
									datagrid.datagrid('unselectAll');
								}
							}
						}
					}, '-', {
						text : '保存',
						iconCls : 'icon-save',
						handler : function() {
							datagrid.datagrid('endEdit', editRow);
						}
					}, '-', {
						text : '取消编辑',
						iconCls : 'icon-redo',
						handler : function() {
							editRow = undefined;
							datagrid.datagrid('rejectChanges');
							datagrid.datagrid('unselectAll');
						}
					} ],
			onAfterEdit : function(rowIndex, rowData, changes) {
				editRow = undefined;
			},
			onDblClickRow : function(rowIndex, rowData) {
				console.info(rowData);
				if (editRow != undefined) {
					datagrid.datagrid('endEdit', editRow);
				}
				if (editRow == undefined) {
					datagrid.datagrid('beginEdit', rowIndex);
					editRow = rowIndex;
				}
			},
			onRowContextMenu:function(e, rowIndex, rowData){
				e.preventDefault();
				$(this).datagrid('unselectAll');
				$(this).datagrid('selectRow',rowIndex);
				$('#menu').menu('show', {    
					left: e.pageX,
					top: e.pageY   
				});  
			},
			onBeforeLoad : function(param) {
				parent.$.messager.progress({
					text : '数据加载中....'
				});
			},
			onLoadSuccess : function(data) {
				parent.$.messager.progress('close');
			}
		});	
	});
</script>
</head>
<body>
	<table id="datagrid"></table>	
	<div id="menu" class="easyui-menu" style="width: 120px; display: none;">
		<div onclick="" iconCls="icon-add">增加</div>
		<div onclick="" iconCls="icon-remove">删除</div>
		<div onclick="" iconCls="icon-edit">编辑</div>
	</div>
</body>
</html>




