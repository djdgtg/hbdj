package com.retech.qc.service;

import com.retech.qc.entity.DbMetadatas;
import com.retech.qc.entity.custom.DataLibrarysManageSearchBean;
import com.retech.qc.utils.ActionResult;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

public interface PersonalService {

	ActionResult uploadFile(MultipartFile uploadFile);

	ActionResult importFile(MultipartFile file, DataLibrarysManageSearchBean searchBean, HttpServletRequest request);

	void exportModelExcel(List<DbMetadatas> list, HttpServletResponse response, HttpServletRequest request,
						  String tablecname, String type, String databaseName, String mouldId);

	ActionResult updateResByFiledBatch(DataLibrarysManageSearchBean searchBean, String fieldval, String fieldname, HttpServletRequest request);

	boolean checkunique(String columnname, String value, Integer seqid, String databasename);

	HashMap<String, Object> uploadkindeditor(MultipartFile file);

	String getfileServerUrl();

}
