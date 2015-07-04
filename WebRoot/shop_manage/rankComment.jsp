<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="user_comment">
	<ul>
		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
		<s:iterator value="commentColl">
	   	<li>
	       	<div class="user_head">
	        	<img src="<s:url action="downloadUserPhoto">
	   			  				  <s:param name="userPhoto" value="user.photo"></s:param>
	   			  				  </s:url>" width="50" height="50" />
	        	<a href="#"><s:property value="user.userName"/></a>
	       	</div>
	       	<div class="comment_top">
	           	<dl>
	               	<dt><img src="<s:url action="downlaodRankPhoto">
	   			  				  <s:param name="rank" value="commentTotal"></s:param>
	   			  				  </s:url>" width="85" height="15" /></dt>
	               	<dt>质量(<s:property value="#list[commentMass-1]"/>)</dt>
	                   <dt>环境(<s:property value="#list[commentEnvironment-1]"/>)</dt>
	                   <dt>服务(<s:property value="#list[commetntService-1]"/>)</dt>
	                   <dt>日期:<s:date name="commentDate" format="yyyy-MM-dd"/></dt>
	               </dl>
	           </div>
	         <div class="comment_under"><s:property value="commentInfo"/></div>
	    	</li>
	       </s:iterator>
	       <li class="more">
	       	<a href="#">更多>></a>
	       </li>
	 	</ul>
	<ul style="display: none;">
		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
		<s:iterator value="rankColl[4]">
	   	<li>
	       	<div class="user_head">
	        	<img src="<s:url action="downloadUserPhoto">
	   			  				  <s:param name="userPhoto" value="user.photo"></s:param>
	   			  				  </s:url>" width="50" height="50" />
	        	<a href="#"><s:property value="user.userName"/></a>
	       	</div>
	       	<div class="comment_top">
	           	<dl>
	               	<dt><img src="<s:url action="downlaodRankPhoto">
	   			  				  <s:param name="rank" value="commentTotal"></s:param>
	   			  				  </s:url>" width="85" height="15" /></dt>
	               	<dt>质量(<s:property value="#list[commentMass-1]"/>)</dt>
	                   <dt>环境(<s:property value="#list[commentEnvironment-1]"/>)</dt>
	                   <dt>服务(<s:property value="#list[commetntService-1]"/>)</dt>
	                   <dt>日期:<s:date name="commentDate" format="yyyy-MM-dd"/></dt>
	               </dl>
	           </div>
	         <div class="comment_under"><s:property value="commentInfo"/></div>
	    	</li>
	       </s:iterator>
	       <li class="more">
	       	<a href="#">更多>></a>
	   </li>
	</ul>
	<ul style="display: none;">
		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
		<s:iterator value="rankColl[3]">
	   	<li>
	       	<div class="user_head">
	        	<img src="<s:url action="downloadUserPhoto">
	   			  				  <s:param name="userPhoto" value="user.photo"></s:param>
	   			  				  </s:url>" width="50" height="50" />
	        	<a href="#"><s:property value="user.userName"/></a>
	       	</div>
	       	<div class="comment_top">
	           	<dl>
	               	<dt><img src="<s:url action="downlaodRankPhoto">
	   			  				  <s:param name="rank" value="commentTotal"></s:param>
	   			  				  </s:url>" width="85" height="15" /></dt>
	               	<dt>质量(<s:property value="#list[commentMass-1]"/>)</dt>
	                   <dt>环境(<s:property value="#list[commentEnvironment-1]"/>)</dt>
	                   <dt>服务(<s:property value="#list[commetntService-1]"/>)</dt>
	                   <dt>日期:<s:date name="commentDate" format="yyyy-MM-dd"/></dt>
	               </dl>
	           </div>
	         <div class="comment_under"><s:property value="commentInfo"/></div>
	    	</li>
	       </s:iterator>
	       <li class="more">
	       	<a href="#">更多>></a>
	   </li>
	</ul>
	<ul style="display: none;">
		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
		<s:iterator value="rankColl[2]">
	   	<li>
	       	<div class="user_head">
	        	<img src="<s:url action="downloadUserPhoto">
	   			  				  <s:param name="userPhoto" value="user.photo"></s:param>
	   			  				  </s:url>" width="50" height="50" />
	        	<a href="#"><s:property value="user.userName"/></a>
	       	</div>
	       	<div class="comment_top">
	           	<dl>
	               	<dt><img src="<s:url action="downlaodRankPhoto">
	   			  				  <s:param name="rank" value="commentTotal"></s:param>
	   			  				  </s:url>" width="85" height="15" /></dt>
	               	<dt>质量(<s:property value="#list[commentMass-1]"/>)</dt>
	                   <dt>环境(<s:property value="#list[commentEnvironment-1]"/>)</dt>
	                   <dt>服务(<s:property value="#list[commetntService-1]"/>)</dt>
	                   <dt>日期:<s:date name="commentDate" format="yyyy-MM-dd"/></dt>
	               </dl>
	           </div>
	         <div class="comment_under"><s:property value="commentInfo"/></div>
	    	</li>
	       </s:iterator>
	       <li class="more">
	       	<a href="#">更多>></a>
	   </li>
	</ul>
	<ul style="display: none;">
		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
		<s:iterator value="rankColl[1]">
	   	<li>
	       	<div class="user_head">
	        	<img src="<s:url action="downloadUserPhoto">
	   			  				  <s:param name="userPhoto" value="user.photo"></s:param>
	   			  				  </s:url>" width="50" height="50" />
	        	<a href="#"><s:property value="user.userName"/></a>
	       	</div>
	       	<div class="comment_top">
	           	<dl>
	               	<dt><img src="<s:url action="downlaodRankPhoto">
	   			  				  <s:param name="rank" value="commentTotal"></s:param>
	   			  				  </s:url>" width="85" height="15" /></dt>
	               	<dt>质量(<s:property value="#list[commentMass-1]"/>)</dt>
	                   <dt>环境(<s:property value="#list[commentEnvironment-1]"/>)</dt>
	                   <dt>服务(<s:property value="#list[commetntService-1]"/>)</dt>
	                   <dt>日期:<s:date name="commentDate" format="yyyy-MM-dd"/></dt>
	               </dl>
	           </div>
	         <div class="comment_under"><s:property value="commentInfo"/></div>
	    	</li>
	       </s:iterator>
	       <li class="more">
	       	<a href="#">更多>></a>
	   </li>
	</ul>
	<ul style="display: none;">
		<s:set name="list" value="{'很差','一般','好','很好','非常好'}"></s:set>
		<s:iterator value="rankColl[0]">
	   	<li>
	       	<div class="user_head">
	        	<img src="<s:url action="downloadUserPhoto">
	   			  				  <s:param name="userPhoto" value="user.photo"></s:param>
	   			  				  </s:url>" width="50" height="50" />
	        	<a href="#"><s:property value="user.userName"/></a>
	       	</div>
	       	<div class="comment_top">
	           	<dl>
	               	<dt><img src="<s:url action="downlaodRankPhoto">
	   			  				  <s:param name="rank" value="commentTotal"></s:param>
	   			  				  </s:url>" width="85" height="15" /></dt>
	               	<dt>质量(<s:property value="#list[commentMass-1]"/>)</dt>
	                   <dt>环境(<s:property value="#list[commentEnvironment-1]"/>)</dt>
	                   <dt>服务(<s:property value="#list[commetntService-1]"/>)</dt>
	                   <dt>日期:<s:date name="commentDate" format="yyyy-MM-dd"/></dt>
	               </dl>
	           </div>
	         <div class="comment_under"><s:property value="commentInfo"/></div>
	    	</li>
	       </s:iterator>
	       <li class="more">
	       	<a href="#">更多>></a>
	   </li>
	</ul>
 </div>