// JavaScript Document
$(function(){
	//点击已经收藏按钮
	$('#haveCollection').click(function(){
		alert("你已经收藏了！");
	});
	//点击跳转不同等级点评信息
	var selector=$('.rank ul li a');
	selector.click(function(){
		for(var i=0;i<selector.length;i++){
			if(i == selector.index(this)){
				$('.rank ul li:eq('+i+')').css('border-bottom','2px solid #CC0000');
				$('.rank ul li a:eq('+i+')').css('color','#CC0000');
				$('.user_comment ul:eq('+i+')').css('display','block');
				continue;
			}
			$('.rank ul li:eq('+i+')').css('border-bottom','none');
			$('.rank ul li a:eq('+i+')').css('color','#551A8B');
			$('.user_comment ul:eq('+i+')').css('display','none');
		}
	});
	
	//点击查看全图
	$('.div_1 a').click(function(e) {
        $.layer({
			type: 2,
			title: false,
			shadeClose: true, //开启点击遮罩关闭层
			area : ['800px' , '500px'],
			offset : ['50px', ''],
			iframe: {src: 'shop_manage/map.html'}
		});
    });
	//公共交通
	$('#transfer').click(function(e) {
        $.layer({
			type: 2,
			title: false,
			shadeClose: true, //开启点击遮罩关闭层
			area : ['1000px' , '600px'],
			offset : ['10px', ''],
			iframe: {src: 'shop_manage/transfer.html'}
		});
    });
	//驾车
	$('#driver').click(function(e) {
        $.layer({
			type: 2,
			title: false,
			shadeClose: true, //开启点击遮罩关闭层
			area : ['1000px' , '600px'],
			offset : ['10px', ''],
			iframe: {src: 'shop_manage/driver.html'}
		});
    });
	
});
//地图初始化
function initialize(){
	var position=new AMap.LngLat(116.406326,39.903942);	//创建中心点坐标  
	var mapObj=new AMap.Map("container",{				//创建地图实例
		center:position,	//地图中心点
		level : 15 			//地图显示的缩放级别
	});
	//向地图添加插件
	mapObj.plugin(["AMap.ToolBar","AMap.OverView","AMap.Scale"],function(){  
		//加载工具条  
		tool=new AMap.ToolBar({
			direction:false,//隐藏方向导航  
			ruler:false,//隐藏视野级别控制尺  
			autoPosition:false//禁止自动定位  
		});  
	  	mapObj.addControl(tool);  
	  	//加载鹰眼  
	  	view=new AMap.OverView();  
		mapObj.addControl(view);  
		//加载比例尺  
		scale=new AMap.Scale();  
		mapObj.addControl(scale);  
	});
	//在地图上生成标注点，自定义构造AMap.Marker对象
	var marker = new AMap.Marker({                   
		  map:mapObj,                  
		  position: position,                  
		  offset: new AMap.Pixel(-10,-34),            
		  icon: "http://webapi.amap.com/images/marker_sprite.png"                  
	}); 
} 
