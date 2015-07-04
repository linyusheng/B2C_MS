// JavaScript Document
var bg = 0;
var tip = "点击星星为商户打分";
//点击哪颗星星，就将该星星的序号赋给全局变量bg
function rememberStar(star,str){
	bg=star;
	tip=str;
}
//鼠标经过第几个星星时，就显示多少颗星星
function over(star,str){
	$(".commentTip").removeClass("fontWeight");
	for(var i=1;i<6;i++){
		if(i != star){
			$("#rank").removeClass("rank"+i);
		}
	}
	$("#rank").addClass("rank"+star);
	$(".commentTip").html(str);
	$(".commentTip").addClass("redTip");
}
//鼠标离开星星后，还原回原来的状态
function out(){
	for(var i=0;i<6;i++){
		$("#rank").removeClass("rank"+i);
	}
	$("#rank").addClass("rank"+bg);
	$(".commentTip").html(tip);
	if(bg == 0){
		$(".commentTip").removeClass("redTip");
	}
}
//////////////////////////////////////////////////
var  	  rank=new Array(0,0,0);
var primaryTip=new Array("给质量打分","给环境打分","给服务打分");
var        str=new Array("很差","一般","好","很好","非常好");
//将索引从0到index的li变为红色
function addColor(id,index){
	$("."+id+"Tip").removeClass("fontWeight");
	for(var i=0;i<6;i++){
		$("#"+id+" ."+i).removeClass("hoverClass");
	}
	for(var i=0;i<=index;i++){
		$("#"+id+" ."+i).addClass("hoverClass");
	}
	$("."+id+"Tip").html(str[index]);
	$("."+id+"Tip").addClass("redTip");
	
}
//将索引从0到index的li的红色移除
function removeColor(id,index){
	for(var i=0;i<6;i++){
		$("#"+id+" ."+i).removeClass("hoverClass");
	}
	for(var i=0;i<rank[index];i++){
		$("#"+id+" ."+i).addClass("hoverClass");
	}
	if(rank[index] == 0){
		$("."+id+"Tip").html(primaryTip[index]);
		$("."+id+"Tip").removeClass("redTip");
	}
	else{
		$("."+id+"Tip").html(str[rank[index]-1]);
	}
}

$(function(){
	//质量评价的经过事件
	$("#quality li").hover(
		//移到元素时触发
		function(){
			var index = $("#quality li").index(this);
			addColor('quality',index);
		},
		//移出元素时触发
		function(){
			removeColor('quality',0);
		}
	);
	//环境评价的经过事件
	$("#enviroment li").hover(
		function(){
			var index = $("#enviroment li").index(this);
			addColor('enviroment',index);
		},
		function(){
			removeColor('enviroment',1);
		}
	);
	//服务评价的经过事件
	$("#service li").hover(
		function(){
			var index = $("#service li").index(this);
			addColor('service',index);
		},
		function(){
			removeColor('service',2);
		}
	);
	//质量评价、环境评价、服务评价的点击事件
	$("#quality li").click(
		function(){
			var index = $("#quality li").index(this)+1;
			rank[0]=index;
		}	
	);
	$("#enviroment li").click(
		function(){
			var index = $("#enviroment li").index(this)+1;
			rank[1]=index;
		}
	);
	$("#service li").click(
		function(){
			var index = $("#service li").index(this)+1;
			rank[2]=index;
		}
	);
	//文本输入提示
	$("textarea").click(
		function(){
			$(this).attr("rows",8);
		}
	);
	$("textarea").blur(
		function(){
			$(this).attr("rows",6);
			if($(this).val() == null || $(this).val() == ""){
				$("#textTip").html('不能为空');
				$("#textTip").css("display","block");
			}
			else if($(this).val().length<60){
				$("#textTip").html('最少30字');
				$("#textTip").css("display","block");
			}
			else{
				$("#textTip").css("display","none");
			}
		}
	);
	//表单验证
	$("form").submit(function() {
		if(bg==0 || rank[0]==0 || rank[1]==0 ||rank[2]==0 || $("textarea").val() == null || $("textarea").val().length<60){
			if(bg==0){
				$(".commentTip").addClass("fontWeight");
			}
			if(rank[0]==0){
				$(".qualityTip").addClass("fontWeight");
			}
			if(rank[1]==0){
				$(".enviromentTip").addClass("fontWeight");
			}
			if(rank[2]==0){
				$(".serviceTip").addClass("fontWeight");
			}
			if($("textarea").val() == null || $("textarea").val().length<60){
				$("#textTip").html('最少30字');
				$("#textTip").css("display","block");
			}
			return false;
		}
		//将各个等级传给服务器
		$("#totalRank").val(bg);
		$("#qualityRank").val(rank[0]);
		$("#enviromentRank").val(rank[1]);
		$("#serviceRank").val(rank[2]);
		return true;
    });
	//等级提示
	$('#c').hover(
		function(){
			$('#rank_tip').show(500);
		},
		function(){
			$('#rank_tip').hide(800);
		}
	);
})














