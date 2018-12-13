package com.retech.qc.service;

import com.retech.qc.entity.BaseRoles;
import com.retech.qc.utils.ActionResult;

import java.util.List;

/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface RolesService {

    List<BaseRoles> list();

    void add(BaseRoles baseRoles);

    void update(BaseRoles baseRoles);

    ActionResult delBatch(String roleIds);

    boolean checkUniqueness(BaseRoles baseRoles);

}
