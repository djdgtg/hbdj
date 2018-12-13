package com.retech.qc.service;

import com.retech.qc.utils.ActionResult;

/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface RoleMenuService {

    ActionResult setRoleMenus(Integer roleId, String menuIds);

    ActionResult listtree(Integer roleId);

}
