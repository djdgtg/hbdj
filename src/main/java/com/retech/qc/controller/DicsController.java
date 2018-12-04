package com.retech.qc.controller;

import com.retech.qc.aspect.LogAnnotation;
import com.retech.qc.aspect.LogType;
import com.retech.qc.entity.BaseDics;
import com.retech.qc.service.DicsService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/dics")
public class DicsController {
	
	@Autowired
	private DicsService dicsService;
	
	@RequestMapping("/list")
	@ResponseBody
	public ActionResult list(BaseDics baseDics){
		return dicsService.list(baseDics);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_2,logdetail="新增字典")
	public ActionResult add(BaseDics baseDics){
		if(dicsService.checkUniquenessByTypeOrName(baseDics)){
			return ActionResult.build(400, "该字典已存在！");
		}
		return dicsService.add(baseDics);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_3,logdetail="更新字典")
	public ActionResult update(BaseDics baseDics){
		if(dicsService.checkUniqueness(baseDics)){
			return ActionResult.build(400, "该字典已存在！");
		}
		return dicsService.update(baseDics);
	}
	
	@RequestMapping("/del")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_4,logdetail="删除字典类型")
	public ActionResult del(BaseDics baseDics){
		return dicsService.del(baseDics);
	}
	
	@RequestMapping("/delBatch")
	@ResponseBody
	@LogAnnotation(logtype = LogType.OPERATION_4,logdetail="删除字典")
	public ActionResult delBatch(String dicIds){
		return dicsService.delBatch(dicIds);
	}

}
