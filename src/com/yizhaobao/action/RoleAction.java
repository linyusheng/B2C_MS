package com.yizhaobao.action;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Role;
import com.yizhaobao.service.RoleService;

public class RoleAction {
	
	@Getter @Setter private RoleService roleService;
	@Getter @Setter private Role role;
	@Getter @Setter private Integer id;
	
	
}
