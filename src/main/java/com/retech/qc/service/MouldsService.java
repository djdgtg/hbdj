package com.retech.qc.service;

import com.retech.qc.entity.DbMoulds;
import com.retech.qc.utils.ActionResult;

public interface MouldsService {

	ActionResult listCustom();

	ActionResult add(DbMoulds dbMoulds);

	ActionResult update(DbMoulds dbMoulds);

	ActionResult delBatch(String mouldIds);

	ActionResult list();

	boolean checkUniqueness(DbMoulds dbMoulds);

}
