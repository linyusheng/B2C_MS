// JavaScript Document
/**
 * 判断用户输入是否为空
 */
function isEmpty(id){
	var value=document.getElementById(id).value;
   	if(value==null||value==""){
	   return true;
	}
	return false;
}
/**
 * 当文本框获得焦点时，隐藏错误提示框
 */
function outTips(id){
	document.getElementById("tips_" + id).style.display="none";
}
/**
 * 显示错误提示框
 */
function errorTips(id,str){
	var l=document.getElementById(id).offsetLeft+272;
	var t=document.getElementById(id).offsetTop;
	document.getElementById('tips_' + id).innerHTML=str;
	document.getElementById('tips_' + id).style.left=l+"px";
	document.getElementById('tips_' + id).style.top=t+"px";
	document.getElementById('tips_' + id).style.display="block";
	
}
/**
 * 表单验证
 */
function formValidator(){
	if(isEmpty('userName') || isEmpty('password') || isEmpty('validate')){
		if(isEmpty('userName')){
			errorTips('userName','请输入用户名！');
		}
		if(isEmpty('password')){
			errorTips('password','请输入密码！');
		}
		if(isEmpty('validate')){
			$("#checkCode").css('display','block').html("请输入验证码！");
		}
		return false;
	}
	if(!checkCode()){
		return false;
	}
	return true;
}
/** 
 * 检查验证码 
 */  
function checkCode() {
	var check = false;  
	if($('[name=validate]').val() == null || $('[name=validate]').val() ==""){
		return check;
	}
    $.ajax( {  
        type : "post",//请求方式  
        url : "checkCode",//发送请求地址  
        async : false,  
        dataType: "html",  
        data : {//发送数据  
            validate : $('[name=validate]').val()  
        },  
        //请求成功后的回调函数有两个参数  
        success : function(data,textStatus) {  
            if(data=='0') {  
                $("#checkCode").css('display','block').html("验证码错误！");  
            } else { 
                check = true;  
            }  
        }  
    });  
    return check;  
}

