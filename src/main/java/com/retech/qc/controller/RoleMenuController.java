package com.retech.qc.controller;

import com.retech.qc.aspect.LogAnnotation;
import com.retech.qc.aspect.LogType;
import com.retech.qc.service.RoleMenuService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/rolemenu")
public class RoleMenuController {
	
	@Autowired
	private RoleMenuService roleMenuService;
	
	@RequestMapping("/list")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_5,logdetail="查询角色菜单")
	public ActionResult list(Integer roleId) {
		return roleMenuService.listtree(roleId);
	}
	
	@RequestMapping("/setRoleMenus")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_3,logdetail="配置角色菜单")
	public ActionResult setRoleMenus(Integer roleId,String menuIds) {
		return roleMenuService.setRoleMenus(roleId,menuIds);
	}
	
}
