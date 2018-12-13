package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseMenus;
import com.retech.qc.entity.BaseMenusExample;
import com.retech.qc.entity.custom.MenusCustomBean;

import java.util.List;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface MenusManageCustomMapper {

    int checkUniqueness(BaseMenus baseMenus);

    List<MenusCustomBean> selectByExample(BaseMenusExample example);

    int countByExample(BaseMenusExample example);

    int deleteBatch(List<String> menuids);

    int delRoleMenuBatch(List<String> menuids);

    List<MenusCustomBean> getRolesMenus(Integer userid);

    List<String> getMenusStringList();

    List<String> getMenusStringListByUserId(Integer id);
}
