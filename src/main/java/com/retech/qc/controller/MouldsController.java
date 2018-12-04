package com.retech.qc.controller;

import com.retech.qc.entity.DbMoulds;
import com.retech.qc.service.MouldsService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/moulds")
public class MouldsController {
	
	@Autowired
	private MouldsService mouldsService;
	
	@RequestMapping("/listCustom")
	@ResponseBody
	public ActionResult listCustom() {
		ActionResult result=mouldsService.listCustom();
		return result;
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public ActionResult list() {
		ActionResult result=mouldsService.list();
		return result;
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public ActionResult add(DbMoulds dbMoulds) {
		if(mouldsService.checkUniqueness(dbMoulds)){
			return ActionResult.build(400, "该模型已存在,请输入其他模型名!");
		}
		return mouldsService.add(dbMoulds);
		
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public ActionResult update(DbMoulds dbMoulds) {
		if(mouldsService.checkUniqueness(dbMoulds)){
			return ActionResult.build(400, "该模型已存在,请输入其他模型名!");
		}
		return mouldsService.update(dbMoulds);
	}
	
	@RequestMapping("/delBatch")
	@ResponseBody
	public ActionResult delBatch(String mouldIds) {
		return mouldsService.delBatch(mouldIds);
	}

}
