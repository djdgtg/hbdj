package com.retech.qc.mapper.custom;

import com.retech.qc.entity.DbLibrarynexus;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 自定义mapper类
 */
@Repository
public interface LibraryNexusManageCustomMapper {
	/**
	 * 根据资源库查询关系
	 * @param databaseId
	 * @return
	 */
	List<DbLibrarynexus> selectByDbId(String databaseId);
    /**
     * 批量删除资源库关系
     * @param dbids
     * @return
     */
    int deleteBatch(List<String> dbids);
}
