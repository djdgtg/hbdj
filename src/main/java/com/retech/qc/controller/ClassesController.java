package com.retech.qc.controller;

import com.retech.qc.aspect.LogAnnotation;
import com.retech.qc.aspect.LogType;
import com.retech.qc.entity.BaseClasses;
import com.retech.qc.service.ClassesService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/classes")
public class ClassesController {
	
	@Autowired
	private ClassesService classesService;
	
	
	@RequestMapping("/listCustom")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_5,logdetail="分类查询")
	public ActionResult listCustom() {
		return classesService.listCustom();
	}
	
	@RequestMapping("/add")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_2,logdetail="新增分类")
	public ActionResult add(BaseClasses baseClasses) {
		if(classesService.checkUniqueness(baseClasses)){
			ActionResult.build(400, "该分类已存在！");
		}
		return classesService.add(baseClasses);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_3,logdetail="更新分类")
	public ActionResult update(BaseClasses baseClasses) {
		return classesService.update(baseClasses);
	}
	
	@RequestMapping("/del")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_4,logdetail="删除分类")
	public ActionResult del(Integer classid) {
		return classesService.del(classid);
	}
	
	@RequestMapping("/treeList")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_5,logdetail="分类查询")
	public ActionResult treeList() {
		return classesService.treeList();
	}
	
}
