package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseClasses;
import com.retech.qc.entity.BaseClassesExample;
import com.retech.qc.entity.custom.ClassesCustomBean;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 自定义mapper类
 */
@Repository
public interface ClassesManageCustomMapper {
    List<ClassesCustomBean> selectByExample(BaseClassesExample example);
    
    int countByExample(BaseClassesExample example);
    
    

	/**
	 * 检查唯一性
	 * @param baseClasses
	 * @return
	 */
    int checkUniqueness(BaseClasses baseClasses);
    
    int deleteBatch(List<String> classids);
}
