package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseMenus;
import com.retech.qc.entity.BaseMenusExample;
import com.retech.qc.entity.custom.MenusCustomBean;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 自定义mapper类
 */
@Repository
public interface MenusManageCustomMapper {

	/**
	 * 检查唯一性
	 * @param baseMenus
	 * @return
	 */
    int checkUniqueness(BaseMenus baseMenus);

    List<MenusCustomBean> selectByExample(BaseMenusExample example);
    
    int countByExample(BaseMenusExample example);
    
    /**
     * 批量删除
     * @param menuids
     * @return
     */
    int deleteBatch(List<String> menuids);
    /**
     * 批量删除
     * @param menuids
     * @return
     */
    int delRoleMenuBatch(List<String> menuids);
    /**
     * 
     * @param userid
     * @return
     */
    List<MenusCustomBean> getRolesMenus(Integer userid);

	List<String> getMenusStringList();

	List<String> getMenusStringListByUserId(Integer id);
}
