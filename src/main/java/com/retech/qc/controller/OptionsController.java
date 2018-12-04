package com.retech.qc.controller;

import com.retech.qc.entity.custom.OptionsSearchBean;
import com.retech.qc.service.OptionsService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/options")
public class OptionsController {
	
	@Autowired
	private OptionsService optionsService;
	
	@RequestMapping("/getMenuTreeOptionsByRole")
	@ResponseBody
	public ActionResult getMenuTreeOptionsByRole(OptionsSearchBean optionsSearchBean) {
		ActionResult result=optionsService.getMenuTreeOptionsByRole(optionsSearchBean);
		return result;
	}
	
	@RequestMapping("/getClassTreeOptionsByParent")
	@ResponseBody
	public ActionResult getClassTreeOptionsByParent(OptionsSearchBean optionsSearchBean) {
		ActionResult result=optionsService.getClassTreeOptionsByParent(optionsSearchBean);
		return result;
	}

}

