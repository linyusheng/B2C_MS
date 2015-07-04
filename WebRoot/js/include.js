// JavaScript Document
//商场分类特效
$(document).ready(function(){
	$('.sort_list ul li').hover(
	function(){
		$(this).addClass("hover_bg");
		$(this).children("div").show();
	},
	function(){
		$(this).removeClass("hover_bg"); 
		$(this).children("div").hide();
	});
	$('.search_button').click(function(e) {
		var key=$('.search_text').val();
        if(key == null || key == "")
			return false;
		else
			$('#searchForKey').submit();
    });
})
