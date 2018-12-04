package com.retech.qc.service;

import com.retech.qc.utils.ActionResult;

public interface LibrarynexusService {

	ActionResult listTabdata(String mdbname, String mdbfield);

	ActionResult listCustom(Integer mouldId, Integer databaseId);

}
