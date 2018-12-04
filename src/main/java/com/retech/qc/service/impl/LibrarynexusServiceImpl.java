package com.retech.qc.service.impl;

import com.retech.qc.entity.DbLibrarynexus;
import com.retech.qc.entity.DbLibrarynexusExample;
import com.retech.qc.entity.DbMetadatas;
import com.retech.qc.entity.DbMetadatasExample;
import com.retech.qc.entity.custom.Constants;
import com.retech.qc.mapper.DbLibrarynexusMapper;
import com.retech.qc.mapper.DbMetadatasMapper;
import com.retech.qc.mapper.custom.DatalibrarysManageCustomMapper;
import com.retech.qc.mapper.custom.LibraryNexusManageCustomMapper;
import com.retech.qc.service.LibrarynexusService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

@Service
public class LibrarynexusServiceImpl implements LibrarynexusService {
	
	@Autowired
	private DbMetadatasMapper metadatasMapper;
	
	@Autowired
	private LibraryNexusManageCustomMapper libraryNexusCustomMapper;
	
	@Autowired
	private DbLibrarynexusMapper librarynexusMapper;
	
	@Autowired
	private DatalibrarysManageCustomMapper datalibrarysCustomMapper;

	public ActionResult listTabdata(String mdbname, String mdbfield) {
		DbLibrarynexusExample example=new DbLibrarynexusExample();
		example.createCriteria().andMdbfieldEqualTo(mdbfield).andMdbnameEqualTo(mdbname);
		List<DbLibrarynexus> nexus = librarynexusMapper.selectByExample(example);
		List<LinkedHashMap<String,Object>> nexusSqlList = null ;
		if(nexus!=null){
			nexusSqlList=datalibrarysCustomMapper.getResList(nexus.get(0).getSdbsql());
			
		}
		return ActionResult.ok(nexusSqlList);
	}

	public ActionResult listCustom(Integer mouldId, Integer databaseId) {
		List<DbLibrarynexus> nexusList=null;
		if(databaseId!=null){
			nexusList = libraryNexusCustomMapper.selectByDbId(databaseId.toString());
		}
		DbMetadatasExample example=new DbMetadatasExample();
		example.createCriteria().andMouldidEqualTo(mouldId);
		List<DbMetadatas> metadatas = metadatasMapper.selectByExample(example);
		List<DbMetadatas> metaDbList = new ArrayList<DbMetadatas>();
		
		for (DbMetadatas dbMetadatas : metadatas) {
			if(dbMetadatas.getColumnsource() != null && dbMetadatas.getColumnsource() == Constants.COlUMNSOURCE_DB){
				metaDbList.add(dbMetadatas);
			}
		}
		List<DbLibrarynexus> nexusMeList = new ArrayList<DbLibrarynexus>();
		DbLibrarynexus nexus = null;
		for (DbMetadatas dbMetadatas : metaDbList) {
			String columnName = dbMetadatas.getColumnname();
			if(nexusList != null){
				for (DbLibrarynexus dbLibraryNexus : nexusList) {
					if(dbLibraryNexus.getMdbfield().equals(columnName)){
						nexus = dbLibraryNexus;
					}
				}
			}else{
				nexus = null;
			}
			if(nexus == null){
				nexus = new DbLibrarynexus();
                nexus.setMdbfield(columnName);
			}
			
			nexusMeList.add(nexus);
		}
		return ActionResult.ok(nexusMeList);
	}

}
