/***
 * 漫画jQuery限制字符串输入插件
 * 编写时间：2012年7月18号
 * version:manhuaInputLetter.1.0.js
***/
$(function() {		
	$.fn.manhuaInputLetter = function(options) {
		var defaults = {			
			len : 200,
			showId : "show"
		};
		var options = $.extend(defaults,options);	
		var $input = $(this);		
		var $show = $("#"+options.showId);
		$show.html(options.len);
		$input.live("keydown keyup blur",function(e){						
		  	var content =$(this).val();
			var length = content.length;
			var result = options.len - length;
			if (result >= 0){
				$show.html(result);
			}else{
				$(this).val(content.substring(0,options.len))
			}
		});	
	}	
});