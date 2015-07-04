package com.yizhaobao.action;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONArray;

import com.yizhaobao.entity.Menu;
import com.yizhaobao.service.MenuService;

import lombok.Getter;
import lombok.Setter;

public class MenuAction {
	
	@Getter @Setter private MenuService menuService;
	@Getter @Setter private Integer id;
	
	public void controlMenu() throws Exception {
		List<Menu> list = menuService.loadMenu(id);
		JSONArray jsonObject = JSONArray.fromObject(list);
		//把数据传回给前台
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json;charset=UTF-8");
		response.getWriter().write(jsonObject.toString());
	}

}
