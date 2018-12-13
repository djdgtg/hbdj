package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseMenus;
import com.retech.qc.entity.BaseRoles;

import java.util.List;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface RolesManageCustomMapper {

    int checkUniqueness(BaseRoles baseRoles);

    int deleteBatch(List<String> roleids);

    List<BaseMenus> getRoleMenus(Integer roleId);
}
