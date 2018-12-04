package com.retech.qc.controller;

import com.retech.qc.aspect.LogAnnotation;
import com.retech.qc.aspect.LogType;
import com.retech.qc.entity.BaseManagers;
import com.retech.qc.entity.BaseMenus;
import com.retech.qc.service.MenusService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/menus")
public class MenusController {
	
	@Autowired
	private MenusService menusService;
	
	@RequestMapping("/getRolesMenus")
	@ResponseBody
	public ActionResult getRolesMenus(HttpServletRequest request) {
		// 获取登录用户
    	BaseManagers loginUser = (BaseManagers) request.getSession().getAttribute("USER_VALUE_OBJECT");
    	// 执行查询
		String htmlmenu = menusService.gethtmlmenu(loginUser.getUserid());
		return ActionResult.ok(htmlmenu);
	}
	
	@RequestMapping("/listCustom")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_5,logdetail="查询菜单")
	public ActionResult listCustom() {
		return menusService.listCustom();
	}
	
	@RequestMapping("/add")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_2,logdetail="新增菜单")
	public ActionResult add(BaseMenus baseMenus) {
		return menusService.add(baseMenus);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_3,logdetail="更新菜单")
	public ActionResult update(BaseMenus baseMenus) {
		return menusService.update(baseMenus);
	}
	
	@RequestMapping("/del")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_4,logdetail="删除菜单")
	public ActionResult del(Integer menuId) {
		return menusService.del(menuId);
	}
	
	@RequestMapping("/treeList")
	@ResponseBody
	public ActionResult treeList() {
		return menusService.treeList();
	}
	
}