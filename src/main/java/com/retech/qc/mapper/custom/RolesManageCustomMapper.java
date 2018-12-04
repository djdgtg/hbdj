package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseMenus;
import com.retech.qc.entity.BaseRoles;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * 自定义mapper类
 * 
 */
@Repository
public interface RolesManageCustomMapper {

	/**
	 * 检查唯一性
	 * @param baseRoles
	 * @return
	 */
    int checkUniqueness(BaseRoles baseRoles);
    
    /**
     * 批量删除角色
     * @param roleids
     * @return
     */
    int deleteBatch(List<String> roleids);

    /**
     * 查询菜单数量
     */
    List<BaseMenus> getRoleMenus(Integer roleId);
}
