package com.retech.qc.mapper.custom;

import com.retech.qc.entity.DbMetadatas;
import com.retech.qc.entity.custom.MetadatasCustomBean;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 自定义mapper类
 * 
 */
@Repository
public interface MetadatasManageCustomMapper {

	/**
	 * 检查唯一性
	 * @param dbMetadatas
	 * @return
	 */
    int checkUniqueness(DbMetadatas dbMetadatas);
    /**
     * 批量删除
     * @param metadataids
     * @return
     */
    int deleteBatch(List<String> metadataids);
    
    List<MetadatasCustomBean> selectByExample(String mouldid);
    
    /**
     * 根据资源库名称查询元数据
     * @param databaseName
     * @return
     */
    List<DbMetadatas> selectByDbname(@Param("databaseName") String databaseName);
}
