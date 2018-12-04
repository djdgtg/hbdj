package com.retech.qc.service;

import com.retech.qc.entity.BaseLogs;
import com.retech.qc.entity.custom.CustomSearchBean;
import com.retech.qc.entity.custom.SysLogsManageSearchBean;
import com.retech.qc.utils.ActionResult;

public interface SysLogsService {

	void insert(BaseLogs log);

	ActionResult list(SysLogsManageSearchBean sysLogsManageSearchBean, CustomSearchBean customSearchBean);

}
