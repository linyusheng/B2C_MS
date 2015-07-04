<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base target="_self" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>积分中心</title>  
    <link href="${pageContext.request.contextPath}/css/include.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/score_center.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function(){
		var l=0;
		$('.navs_li').click(function(){
			$(this).siblings().removeClass('on');
			$(this).addClass('on');
			var i=$(this).index();	
			var a1=160*i;	
			$(".s_line").animate({left:a1},200);
			var index = $(".navs_li").index($(this));
			$(".item_tab").hide();
			$(".item_tab").eq(index).show();
		});	
	})
	</script>
  </head>
 
  <body>
	<%@ include file="../include/top.jsp"%>
	<%@ include file="../include/head.jsp"%>
    <div class="userInfo">
        <div class="photo">
        	<a href="#"><img src="${pageContext.request.contextPath}/images/default.gif" width="100" height="100" /></a>
        </div>
        <div class="info">
            <strong>张三</strong>&nbsp;,&nbsp;欢迎来到积分中心！<br />
            <label>我的积分：</label>2000
        </div>
        
        <div class="announce" >
            <ul>
                <li>
                    <label>积分公告1：</label>
                    <a href="#">快速点评商家，马上赚取积分！</a>
                </li>
                <li>
                    <label>积分公告2：</label>
                    <a href="#">快速点评商家，马上赚取积分！</a>
                </li>
                <li>
                    <label>积分公告3：</label>
                    <a href="#">快速点评商家，马上赚取积分！</a>
                </li>
            </ul>
        </div>
    </div>
        
    <div class="div_nav">
        <ul class="nav">
            <li class="navs_li on">首页</li>
            <li class="navs_li">积分明细</li>
            <li class="navs_li">赚积分</li>
            <li class="navs_li">积分说明</li>
        </ul>
        <div class="line">
            <span class="s_line">	    		
                <b></b>
            </span>
            <div style="clear: both;"></div>
        </div>		
        <div style="clear: both;"></div>
    </div>
        
    <div class="mid_content">
        <div class="item_tab" style="display: block;">
          <div class="home_list">
                <div class="list_images1"></div>
                <div class="list_label">
                    亲，想知道您的积分收入/支出的具体情况吗？ 还等什么？马上去看看吧！
                </div>
                <div class="list_txt">          
                    <a href="#"> 积分明细</a>             
                </div>
          </div>
          <div class="home_list">
                <div class="list_images2"></div>
                <div class="list_label">
                    这个年头，积分太好赚了。亲，今天您赚了吗？动一下手指，积分马上到手哦！
                </div>
                <div class="list_txt">
                    <a href="#">&nbsp;赚积分&nbsp;</a>
                </div>
          </div>
          <div class="home_list">
                <div class="list_images3"></div>
                <div class="list_label">
                    想要更好地了解和使用积分，赶快到这里呀亲，走过路过千万别错过哦！
                </div>
                <div class="list_txt">
                    <a href="#"> 积分说明</a>
                </div>
          </div>
            
            
   </div>
            <div class="item_tab" style="display: none;">
                <table>
	            	<tr>
	                    <th class="th_first">时间</th>
	                    <th class="th_second">积分</th>
	                    <th class="th_third">行为</th>
	                    <th class="th_fourth">备注</th>
	                </tr>
	                <tr> 	
	                    <td>1993-01-01 17:00:00</td>
	                    <td>+20</td>
	                    <td>点评商店</td>
	                    <td>商店名称：咖啡之翼</td>
	                </tr>
            	</table>
            </div>
            <div class="item_tab" style="display: none;">
                <div class="home_list">
                    <div class="list_images4"></div>
                    <div class="list_label">
                        亲，您今天签到了吗？请别忘了，每天签到都有积分加的哦！
                    </div>
                    <div class="list_txt">
                        <a href="#">去签到</a>
                    </div>
                </div>
            <div class="home_list">
                    <div class="list_images5"></div>
                    <div class="list_label">
                        是否上次去了某个舒适漂亮的商店，而忘记点评了？现在也还不晚呢，Come on！
                    </div>
                    <div class="list_txt">
                        <a href="#">去点评</a>
                    </div>
           </div>
                <div class="home_list">
                    <div class="list_images6"></div>
                    <div class="list_label">
                        社区发帖谈谈自己的近况，还可以认识很多妹子或帅锅呢，还可以加积分哦！
                    </div>
                    <div class="list_txt">
                        <a href="#">去发帖</a>
                    </div>
                </div>
                
           </div>
    
            <div class="item_tab" style="display: none;">
            <div class="infor_text">
                <h1>积分说明</h1>
                <p style="text-align:left; margin:20px ;line-height:200%">&nbsp;&nbsp;&nbsp;&nbsp;积分是什么呢？ 积分是易找宝网特有的一种营销工具，持有积分的用户能够在易找网参与多种商品优惠（例如平台的商家给予的折扣销售等），及商家提供的商品全额兑换、抽奖等活动，更能兑换电子书等权益。</p>
            </div>
           
            </div>
    </div>

 	<%@ include file="../include/footer.jsp"%>
</body>
</html>