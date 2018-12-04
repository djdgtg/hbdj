package com.retech.qc.service;

import com.retech.qc.entity.DbDatalibrarys;
import com.retech.qc.entity.custom.CustomQueryBean;
import com.retech.qc.entity.custom.DataLibrarysManageSearchBean;
import com.retech.qc.entity.custom.DatalibrarysCustomBean;
import com.retech.qc.entity.custom.QueryList;
import com.retech.qc.utils.ActionResult;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface DatalibrarysService {

	ActionResult listCustom(DataLibrarysManageSearchBean searchBean);

	ActionResult list(String mouldId);

	boolean checkUniqueness(DatalibrarysCustomBean customBean);

	ActionResult update(DatalibrarysCustomBean customBean);

	ActionResult add(DatalibrarysCustomBean customBean);

	ActionResult updateStatus(DbDatalibrarys datalibrarys);

	ActionResult getSelfDataList(DataLibrarysManageSearchBean searchBean, List<CustomQueryBean> queryList);

	ActionResult updateEditableField(Integer seqid, String field, String value, String databasename, String mouldId, HttpServletRequest request);

	ActionResult getSelfDbInfo(Integer seqId, String databaseName);

	ActionResult addRes(DataLibrarysManageSearchBean searchBean, QueryList queryList, HttpServletRequest request) throws Exception;

	ActionResult updateRes(DataLibrarysManageSearchBean searchBean, QueryList queryList, HttpServletRequest request) throws Exception;

	ActionResult delResBatch(DataLibrarysManageSearchBean searchBean, HttpServletRequest request);

	ActionResult delBatch(String databaseIds);

}
