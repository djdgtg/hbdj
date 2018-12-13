package com.retech.qc.service;

import com.retech.qc.utils.ActionResult;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface LibrarynexusService {

    ActionResult listTabdata(String mdbname, String mdbfield);

    ActionResult listCustom(Integer mouldId, Integer databaseId);

}
