package com.retech.qc.service;

import com.retech.qc.entity.DbMoulds;
import com.retech.qc.utils.ActionResult;

/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface MouldsService {

    ActionResult add(DbMoulds dbMoulds);

    ActionResult update(DbMoulds dbMoulds);

    ActionResult delBatch(String mouldIds);

    ActionResult list();

    boolean checkUniqueness(DbMoulds dbMoulds);

}
