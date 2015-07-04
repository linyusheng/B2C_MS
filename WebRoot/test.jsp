<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title></title>
		<script type="text/javascript"
			src="http://webapi.amap.com/maps?v=1.2&key=4dda83e9837a825271d214348eb4f168"></script>
		<style type="text/css">
html {
	height: 100%
}

body {
	height: 100%;
	margin: 0px;
	padding: 0px
}

#container {
	height: 100%
}
</style>
		<script type="text/javascript">  
function initialize(){  
	//创建地图对象  
   var mapObj=new AMap.Map("container",{center:new AMap.LngLat(113.604469,24.794215),level:11});  
   //加载云数据图层插件  
   mapObj.plugin('AMap.CloudDataLayer',function(){  
   //实例化一个云图层对象，设置数据表id  
    var layerOptions = {   
      query:{keywords: '1'},   
      clickable:true  
    };  
    var cloudDataLayer = new AMap.CloudDataLayer('535b5424e4b0a8066457c4ff', layerOptions); //实例化云图层类  
    cloudDataLayer.setMap(mapObj); //叠加云图层到地图  
    AMap.event.addListener(cloudDataLayer, 'click', function(e) {           //鼠标点击事件结果解析  
    var resultStr='';  
    resultStr+='<p>数据id：'+e.data._id+'</p>';  
    resultStr+='<p>坐标：'+e.data._location+'</p>';  
    resultStr+='<p>名称：'+e.data._name+'</p>';
    alert(resultStr);
	});  
 });  
}
</script>
	</head>

	<body onload="initialize()">
		<div id="container"></div>
	</body>
</html>
