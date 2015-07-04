package com.yizhaobao.service;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.RoleDAO;
import com.yizhaobao.entity.Role;

public class RoleService {
	
	@Getter @Setter private RoleDAO roleDAO;

	/*
	 * 根据主键ID查找对象
	 */
	public Role loadRole(Integer id){
		return roleDAO.findById(id);
	}
	/*
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveRole(Role role) {
		 roleDAO.merge(role);
	}

	/*
	 * 根据主键ID删除数据库中对象
	 */
	public void removeUser(Integer id) {
		roleDAO.delete(roleDAO.findById(id));
	}
}
