package com.retech.qc.service;

import com.retech.qc.entity.DbMetadatas;
import com.retech.qc.entity.custom.MetadatasManageSearchBean;
import com.retech.qc.utils.ActionResult;

import java.util.List;

/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface MetadatasService {

    ActionResult listCustom(String mouldId);

    ActionResult add(DbMetadatas metadatas);

    ActionResult update(DbMetadatas metadatas);

    ActionResult delBatch(String metadataIds);

    boolean checkUniqueness(DbMetadatas metadatas);

    ActionResult list(Integer mouldId);

    ActionResult listByDbName(String databaseName);

    List<DbMetadatas> getMetadataByField(MetadatasManageSearchBean searchBean);

}
