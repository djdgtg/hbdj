package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseManagers;
import com.retech.qc.entity.BaseManagersExample;
import com.retech.qc.entity.custom.ManagersCustomBean;
import com.retech.qc.entity.custom.ManagersManageSearchBean;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 自定义mapper类
 */
@Repository
public interface ManagersManageCustomMapper {

	/**
	 * 检查唯一性
	 * @param baseManagers
	 * @return
	 */
    int checkUniqueness(BaseManagers baseManagers);
    
	/**
	 * 插入
	 * @param record
	 * @return
	 */
    int insertSelective(BaseManagers record);

    int countByExample(BaseManagersExample example);

    /**
     * 批量删除管理员
     * @param managerids
     * @return
     */
    int deleteBatch(List<String> managerids);
    
	/**
	 * 重置密码、锁定/解锁
	 * @param record
	 * @return
	 */
    int updateBatch(Map<String, Object> record);

	List<ManagersCustomBean> listManagersCustomBean(ManagersManageSearchBean managers);
}
