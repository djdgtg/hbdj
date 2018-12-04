package com.retech.qc.service;

import com.retech.qc.entity.custom.OptionsSearchBean;
import com.retech.qc.utils.ActionResult;

public interface OptionsService {

	ActionResult getMenuTreeOptionsByRole(OptionsSearchBean optionsSearchBean);

	ActionResult getClassTreeOptionsByParent(OptionsSearchBean optionsSearchBean);

}
