package com.retech.qc.service.impl;

import com.retech.qc.entity.DbMoulds;
import com.retech.qc.entity.DbMouldsExample;
import com.retech.qc.mapper.DbMouldsMapper;
import com.retech.qc.mapper.custom.MouldsManageCustomMapper;
import com.retech.qc.service.MouldsService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MouldsServiceImpl implements MouldsService {
	
	@Autowired
	private DbMouldsMapper mouldsMapper;
	
	@Autowired
	private MouldsManageCustomMapper mouldsCustomMapper;

	public ActionResult listCustom() {
		return ActionResult.ok(mouldsCustomMapper.listCustom());
	}
	
	public ActionResult list() {
		return ActionResult.ok(mouldsMapper.selectByExample(new DbMouldsExample()));
	}

	public ActionResult add(DbMoulds dbMoulds) {
		int count = mouldsMapper.insertSelective(dbMoulds);
		if(count > 0){
			return ActionResult.ok();
		}
		return ActionResult.build(400, "操作失败！");
	}

	public ActionResult update(DbMoulds dbMoulds) {
		int count = mouldsMapper.updateByPrimaryKeySelective(dbMoulds);
		if(count > 0){
			return ActionResult.ok();
		}
		return ActionResult.build(400, "操作失败！");
	}

	public ActionResult delBatch(String mouldIds) {
		String[] ids = mouldIds.split(",");
		for (String id : ids) {
			mouldsMapper.deleteByPrimaryKey(Integer.valueOf(id));
		}
		return ActionResult.ok();
	}

	public boolean checkUniqueness(DbMoulds dbMoulds) {
		return mouldsCustomMapper.checkUniqueness(dbMoulds)>0;
	}

	

}
