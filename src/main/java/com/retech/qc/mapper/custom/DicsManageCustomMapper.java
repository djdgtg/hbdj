package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseDics;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 自定义mapper类
 * 
 */
@Repository
public interface DicsManageCustomMapper {

	/**
	 * 检查唯一性
	 * @param baseDics
	 * @return
	 */
    int checkUniqueness(BaseDics baseDics);
    
    
    int deleteBatch(List<String> classids);


	int checkUniquenessByTypeOrName(BaseDics baseDics);
}
