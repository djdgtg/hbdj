package com.retech.qc.service;

import com.retech.qc.utils.ActionResult;

public interface RoleMenuService {

	ActionResult setRoleMenus(Integer roleId, String menuIds);

	ActionResult listtree(Integer roleId);

}
