// JavaScript Document
var str=new Array('myFootPrint','myInfo','myComment','myCollection','myMessage');
//内容切换效果
function contentToggle(id){
	jQuery('#'+id).click(
		function(){
			jQuery('#ul_'+id).toggle("slow");
		}
	);
}
//图标切换效果1
function iconToggle1(id){
	jQuery('#'+id).toggle(
		function(){
			jQuery('#'+id).children("img").attr("src","images/triangle-bottom.png");
		},
		function(){
			jQuery('#'+id).children("img").attr("src","images/triangle-right.png");
		}
	);
}
//图标切换效果2
function iconToggle2(id){
	jQuery('#'+id).children("img").attr("src","images/triangle-bottom.png");
	jQuery('#'+id).toggle(
		function(){
			jQuery('#'+id).children("img").attr("src","images/triangle-right.png");
		},
		function(){
			jQuery('#'+id).children("img").attr("src","images/triangle-bottom.png");
		}
	);
}
//根据不同参数调用主函数
function Main(index){
	for(var i=0;i<str.length;i++){
		contentToggle(str[i]);
		if(index == i){
			iconToggle2(str[i]);
			continue;
		}
		iconToggle1(str[i]);
	}
}