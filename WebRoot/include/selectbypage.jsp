<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:form id="pageform">
	<div class="paging">
    <div class="byPage">
        <ul>
        	<s:if test="%{pageBean.currentPage == 1}">
        		<li class="noStyle">首页</li>
        		<li class="noStyle">上一页</li>
        	</s:if>
        	<s:else>
	            <li><a href="javascript:void(0)" onclick="searchForPage(1);">首页</a></li>
	            <li><a href="javascript:void(0)" onclick="searchForPage(<s:property value="%{pageBean.currentPage-1}"/>);">上一页</a></li>
            </s:else>
            <s:if test="%{pageBean.currentPage < pageBean.totalPage}">
	            <li><a href="javascript:void(0)" onclick="searchForPage(<s:property value="%{pageBean.currentPage+1}"/>);">下一页</a></li>
	            <li><a href="javascript:void(0)" onclick="searchForPage(<s:property value="pageBean.totalPage"/>);">尾页</a></li>
            </s:if>
            <s:else>
            	<li class="noStyle">下一页</li>
        		<li class="noStyle">尾页</li>
            </s:else>
        </ul>
    </div>
    <div class="searchPage">
        <ul>
            <li>共<s:property value="pageBean.totalPage"/>页&nbsp;&nbsp;到第</li>
            <li><input type="text" id="currentPage" value="<s:property value="pageBean.currentPage"/>" size="1"/></li>
            <li>&nbsp;页&nbsp;</li>
            <li><a href="javascript:void(0)" onclick="searchForPage(currentPage.value);" class="buttonByPage">确定</a></li>
        </ul>
    </div>
</div>
</s:form>