package com.yizhaobao.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import com.yizhaobao.entity.User;
import com.yizhaobao.service.UserService;
import com.yizhaobao.util.Json;
import com.yizhaobao.util.JsonDateValueProcessor;
import com.yizhaobao.util.PageBean;

import lombok.Getter;
import lombok.Setter;

public class AdminAction {
	
	@Getter @Setter private UserService userService;
	@Getter @Setter private User user;
	@Getter @Setter private Integer page;//前台请求的当前页
	@Getter @Setter private Integer rows;//前台请求的记录行数
	@Getter @Setter private String sort; //前台请求的排序名称
	@Getter @Setter private String order;//前台请求的升序或降序
	
	
	/**
	 * 进入后台首页，加载相关数据
	 */
	public String loadInfo() throws Exception{
		return "success";
	}
	/**
	 * 完成datagrid的数据查询操作
	 */
	public void datagrid() throws Exception {
		Json json = new Json();
		PageBean pageBean = new PageBean();
		//由于分页PageBean的原因，必须先设置记录行数，再设置当前页，否则当前页总是第一页
		pageBean.setPageSize(rows);
		pageBean.setCurrentPage(page);
		json.setRows(userService.getUser(pageBean,sort,order));
		json.setTotal(pageBean.getTotalRow());
		//解决JSON转换hibernate 结果集对象出现的问题
		//提供了一个过滤作用，如果遇到关联的对象时他会自动过滤掉，不去执行关联关联所关联的对象。
		JsonConfig config = new JsonConfig();
		//为config注册一个时间转化器，用于将Date类型的数据解析为yyyy-MM-dd HH:mm:ss的格式
		config.registerJsonValueProcessor(Timestamp.class, new JsonDateValueProcessor());
		config.setExcludes( new String[]{"role" , "shops" , "pictures" ,"messages" , "reviews" , "collections" , "communities" , "comments" } ) ;
		JSONObject jsonObject = JSONObject.fromObject(json,config);
		//把数据传回给前台
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json;charset=UTF-8");
		response.getWriter().write(jsonObject.toString());
	}
}
