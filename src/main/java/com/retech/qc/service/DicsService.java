package com.retech.qc.service;

import com.retech.qc.entity.BaseDics;
import com.retech.qc.utils.ActionResult;

public interface DicsService {

	ActionResult list(BaseDics baseDics);

	boolean checkUniquenessByTypeOrName(BaseDics baseDics);
	
	boolean checkUniqueness(BaseDics baseDics);

	ActionResult add(BaseDics baseDics);

	ActionResult update(BaseDics baseDics);

	ActionResult del(BaseDics baseDics);

	ActionResult delBatch(String dicIds);


}
