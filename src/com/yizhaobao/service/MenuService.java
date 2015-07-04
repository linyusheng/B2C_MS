package com.yizhaobao.service;

import java.util.List;

import com.yizhaobao.entity.Menu;
import com.yizhaobao.entity.MenuDAO;
import com.yizhaobao.util.PageService;

import lombok.Getter;
import lombok.Setter;

public class MenuService {
	
	@Getter @Setter private MenuDAO menuDAO;
	
	@SuppressWarnings("unchecked")
	public List<Menu> loadMenu(Integer id) {
		Object[] params=null;
		String selectHql=null;
		if (id == null) {
			selectHql="from Menu as m where m.pid is null";
		} else {
			selectHql="from Menu as m where m.pid = '" + id + "'";
		}
		String countHql="select count(*) "+selectHql;
		List<Menu> list=PageService.searchByPage(selectHql, countHql, params, null, menuDAO);
		return list;
	}

}
