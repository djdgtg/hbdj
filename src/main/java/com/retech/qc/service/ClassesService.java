package com.retech.qc.service;

import com.retech.qc.entity.BaseClasses;
import com.retech.qc.utils.ActionResult;

public interface ClassesService {

	ActionResult listCustom();

	ActionResult add(BaseClasses baseClasses);

	ActionResult update(BaseClasses baseClasses);

	ActionResult del(Integer classid);

	ActionResult treeList();

	boolean checkUniqueness(BaseClasses baseClasses);

}
