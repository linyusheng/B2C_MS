// JavaScript Document
function tab(index){//切换注册对象（个人用户、商户）
	var list=document.getElementById("container").getElementsByTagName("dd");
	var var1=document.getElementById("content1");
	var var2=document.getElementById("content2");
	for(var i=0;i<list.length;i++){
		list[i].className='out';
	}
	if(index ==0){
		list[index].className='on';
		var1.style.display = 'block';
		var2.style.display = 'none';
		tabHidden('business_name');
		tabHidden('business_password');
		tabHidden('business_check_password');
		tabHidden('real_name');
		tabHidden('telephone');
		tabHidden('identify');
		tabHidden('e-mail');
		tabHidden('shopName');
		tabHidden('shopAddress');
	}else{
		list[index].className='on';
		var1.style.display = 'none';
		var2.style.display = 'block';
		tabHidden('username');
		tabHidden('password');
		tabHidden('check_password');
		tabHidden('agreeprovision');
	}
}
function tabHidden(id){//切换注册对象时，将提示恢复到原来的状态
	document.getElementById(id).style.borderColor='#ccc';
	document.getElementById('tips_' + id).style.display='none';

}
function hiddenCheckboxTips(id){//若同意服务条款，则隐藏提示信息
	if(document.getElementById('checkbox').checked || document.getElementById('business_checkbox').checked){
		document.getElementById(id).style.display = 'none';
	}
}
function tips(id,str){//当文本框获得焦点时，显示提示信息
	var l=document.getElementById(id).offsetLeft+272;
	var t=document.getElementById(id).offsetTop;
	document.getElementById("tips").innerHTML=str;
	document.getElementById("tips").style.left=l+"px";
	document.getElementById("tips").style.top=t+"px";
	document.getElementById("tips").style.borderColor="#ccc";
	document.getElementById("tips").style.display="block";
	document.getElementById(id).style.borderColor="#00CD00";//文本框边框换成高亮颜色
	document.getElementById("tips_" + id).style.display="none";
}
function outTips(id){//当文本框失去焦点时，隐藏提示信息
    document.getElementById("tips").style.display='none';
	document.getElementById(id).style.borderColor='#ccc';
	if(id == 'username'){							//验证账号长度是否符合规范
		var length=getLength(id);
		if(length>=1 && length<4){
			errorTips(id,'账号长度只能在4-24个字符之间');
		}
	}
	if(id == 'password' || id == 'check_password'){	//验证密码长度是否符合规范
		var length=getLength(id);
		if(length>= 1 && length<6){
			errorTips(id,'密码长度只能在6-16个字符之间');
		}
	}
	if(id == 'check_password' && getLength(id)>=6){	//验证两次输入的密码是否一致
		if(document.getElementById('password').value != document.getElementById('check_password').value){
			errorTips('check_password','两次输入密码不一致');
		}
	}
	if(id == 'business_name'){							//验证账号长度是否符合规范
		var length=getLength(id);
		if(length>=1 && length<4){
			errorTips(id,'账号长度只能在4-24个字符之间');
		}
	}
	if(id == 'business_password' || id == 'business_check_password'){	//验证密码长度是否符合规范
		var length=getLength(id);
		if(length>= 1 && length<6){
			errorTips(id,'密码长度只能在6-16个字符之间');
		}
	}
	if(id == 'business_check_password' && getLength(id)>=6){	//验证两次输入的密码是否一致
		if(document.getElementById('business_password').value != document.getElementById('business_check_password').value){
			errorTips('business_check_password','两次输入密码不一致');
		}
	}
}
function isEmpty(id){//判断用户输入是否为空
	var value=document.getElementById(id).value;
   	if(value==null||value==""){
	   return true;
	}
	return false;
}
function errorTips(id,str){//错误提示信息
	var l=document.getElementById(id).offsetLeft+272;
	var t=document.getElementById(id).offsetTop;
	document.getElementById('tips_' + id).innerHTML=str;
	document.getElementById('tips_' + id).style.left=l+"px";
	document.getElementById('tips_' + id).style.top=t+"px";
	document.getElementById('tips_' + id).style.display="block";
	if(id != 'agreeprovision'){
		document.getElementById(id).style.borderColor='#F00';//文本框边框换成红色
	}
}
function getLength(id){//取得用户输入的字符串的长度
   	var i,sum=0;
	var value=document.getElementById(id).value;
    for(i=0;i<value.length;i++){
		if((value.charCodeAt(i)>=0)&&(value.charCodeAt(i)<=255)) 
			sum++; 
		else
			sum+=2;
	}
    return sum;
}
function content1_formCheck(){//表单验证
	if(isEmpty('username') || isEmpty('password') || isEmpty('check_password')){//三者有一个为空，则注册失败
		if(isEmpty('username')){
			errorTips('username','请输入账户名');
		}
		if(isEmpty('password')){
			errorTips('password','请输入密码');
		}
		if(isEmpty('check_password')){
			errorTips('check_password','请输入密码');
		}
		if(!document.getElementById('checkbox').checked){//如果未同意服务协议，则注册失败
			errorTips('agreeprovision','请接受服务条款');
		}
		return false;
	}
	if(getLength('username')<4 || getLength('password')<6 || getLength('check_password')<6){//三者长度不规范，则注册失败
		if(getLength('username')>=1 && getLength('username')<4){
			errorTips('username','账号长度只能在4-24个字符之间');
		}
		if(getLength('password')>= 1 && getLength('password')<6){
			errorTips('password','密码长度只能在6-16个字符之间');
		}
		if(getLength('check_password')>= 1 && getLength('check_password')<6){
			errorTips('check_password','密码长度只能在6-16个字符之间');
		}
		if(!document.getElementById('checkbox').checked){//如果未同意服务协议，则注册失败
			errorTips('agreeprovision','请接受服务条款');
		}
		return false;
	}
	if(document.getElementById('password').value != document.getElementById('check_password').value){//如果两次输入的密码不一致，则注册失败
		errorTips('check_password','两次输入密码不一致');
		if(!document.getElementById('checkbox').checked){//如果未同意服务协议，则注册失败
			errorTips('agreeprovision','请接受服务条款');
		}
		return false;
	}
	if(!document.getElementById('checkbox').checked){	//如果未同意服务协议，则注册失败
		errorTips('agreeprovision','请接受服务条款');
		return false;
	}
	return true;//注册成功
}

function content2_formCheck(){
	//如果有一项为空，则注册失败
	if(isEmpty('business_name') || isEmpty('business_password') || isEmpty('business_check_password') || isEmpty('real_name') || isEmpty('telephone') || isEmpty('identify') || isEmpty('e-mail') || isEmpty('shopName') || isEmpty('shopAddress')){
		if(isEmpty('business_name')){
			errorTips('business_name','请输入商户名');
		}
		if(isEmpty('business_password')){
			errorTips('business_password','请输入密码');
		}
		if(isEmpty('business_check_password')){
			errorTips('business_check_password','请输入密码');
		}
		if(isEmpty('real_name')){
			errorTips('real_name','请输入真实姓名');
		}
		if(isEmpty('telephone')){
			errorTips('telephone','请输入固定电话');
		}
		if(isEmpty('identify')){
			errorTips('identify','请输入身份证号');
		}
		if(isEmpty('e-mail')){
			errorTips('e-mail','请输入电子邮箱');
		}
		if(isEmpty('shopName')){
			errorTips('shopName','请输入商店名');
		}
		if(isEmpty('shopAddress')){
			errorTips('shopAddress','请输入商店地址');
		}
		if(!document.getElementById('business_checkbox').checked){//如果未同意服务协议，则注册失败
			errorTips('business_agreeprovision','请接受服务条款');
		}
		return false;
	}
	if(getLength('business_name')<4 || getLength('business_password')<6 || getLength('business_check_password')<6){//三者长度不规范，则注册失败
		if(getLength('business_name')>=1 && getLength('business_name')<4){
			errorTips('business_name','账号长度只能在4-24个字符之间');
		}
		if(getLength('business_password')>= 1 && getLength('business_password')<6){
			errorTips('business_password','密码长度只能在6-16个字符之间');
		}
		if(getLength('business_check_password')>= 1 && getLength('business_check_password')<6){
			errorTips('business_check_password','密码长度只能在6-16个字符之间');
		}
		if(!document.getElementById('business_checkbox').checked){//如果未同意服务协议，则注册失败
			errorTips('business_agreeprovision','请接受服务条款');
		}
		return false;
	}
	if(document.getElementById('business_password').value != document.getElementById('business_check_password').value){//如果两次输入的密码不一致，则注册失败
		errorTips('business_check_password','两次输入密码不一致');
		if(!document.getElementById('business_checkbox').checked){//如果未同意服务协议，则注册失败
			errorTips('business_agreeprovision','请接受服务条款');
		}
		return false;
	}
	if(!document.getElementById('business_checkbox').checked){	//如果未同意服务协议，则注册失败
		errorTips('business_agreeprovision','请接受服务条款');
		return false;
	}
	return true;//注册成功
}
//根据选择的父类型，设置子类型的范围
function changeType(){
	//得到父级选择的索引位置
	var index = document.getElementById("big_type").selectedIndex;
	var childOption = document.getElementById("small_type");	
	//根据索引位置插入子级option参数
	switch(index){
		case 0:
				childOption.innerHTML = 
				"<option value=\"9\">粤菜</option>" +
				"<option value=\"10\">西餐</option>" +
				"<option value=\"11\">火锅</option>" +
				"<option value=\"12\">自助餐</option>" +
				"<option value=\"13\">小吃快餐</option>" +
				"<option value=\"14\">其它</option>";
				break;
		case 1:
				childOption.innerHTML = 
				"<option value=\"15\">服饰鞋包</option>" +
				"<option value=\"16\">运动户外</option>" +
				"<option value=\"17\">综合商场</option>" +
				"<option value=\"18\">珠宝饰品</option>" +
				"<option value=\"19\">超市</option>" +
				"<option value=\"20\">食品茶酒</option>" +
				"<option value=\"21\">化妆品</option>" +
				"<option value=\"22\">其它</option>";
				break;
		case 2:
				childOption.innerHTML = 
				"<option value=\"23\">咖啡厅</option>" +
				"<option value=\"24\">酒吧</option>" +
				"<option value=\"25\">KTV</option>" +
				"<option value=\"26\">公园</option>" +
				"<option value=\"27\">电影院</option>" +
				"<option value=\"28\">其它</option>";
				break;
		case 3:
				childOption.innerHTML = 
				"<option value=\"29\">手机</option>" +
				"<option value=\"30\">笔记本</option>" +
				"<option value=\"31\">台式机</option>" +
				"<option value=\"32\">数码相机</option>" +
				"<option value=\"33\">平板电脑</option>" +
				"<option value=\"34\">其它</option>";
				break;
		case 4:
				childOption.innerHTML = 
				"<option value=\"35\">健身中心</option>" +
				"<option value=\"36\">游泳馆</option>" +
				"<option value=\"37\">羽毛球馆</option>" +
				"<option value=\"38\">乒乓球馆</option>" +
				"<option value=\"39\">体育场馆</option>" +
				"<option value=\"40\">其它</option>";
				break;
		case 5:
				childOption.innerHTML = 
				"<option value=\"41\">五星级酒店</option>" +
				"<option value=\"42\">四星级酒店</option>" +
				"<option value=\"43\">三星级酒店</option>" +
				"<option value=\"44\">经济型酒店</option>" +
				"<option value=\"45\">公寓式酒店</option>" +
				"<option value=\"46\">其它</option>";
				break;
		case 6: 
				childOption.innerHTML = 
				"<option value=\"47\">装修设计</option>" +
				"<option value=\"48\">建材</option>" +
				"<option value=\"49\">家装</option>" +
				"<option value=\"50\">家具家居</option>" +
				"<option value=\"51\">家用电器</option>" +
				"<option value=\"52\">其它</option>";
				break;
		case 7:
				childOption.innerHTML = 
				"<option value=\"53\">银行</option>" +
				"<option value=\"54\">学校</option>" +
				"<option value=\"55\">医院</option>" +
				"<option value=\"56\">其它</option>";
				break;
	}	
}
$(function(){
	//用户名唯一验证
	AjaxRegister('username','userForm');
	AjaxRegister('business_name','businForm');
});
function AjaxRegister(textId,formName){
	var userName = $('#'+textId);
	userName.blur(function(){
		if(userName.val() == "" || userName.val() == null || getLength(textId) < 4){
			
		}else{
			$.ajax({
				url:'isHaveUser',
				data:{userName:encodeURI(userName.val())},
				cache : false,
				dataType : 'json',
				success : function(data){
					var d = jQuery.parseJSON(data);//解析响应的JSON
					//若用户名已存在
					if(d.success){
						errorTips(textId,d.msg);
						$("form[name=" + formName + "]").submit(function(){
							if(d.success){
								return false;
							}else{
								return true;
							}
						});
					}
				}
			});
		}
	});
}











