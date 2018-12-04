package com.retech.qc.mapper.custom;

import com.retech.qc.entity.custom.DataLibrarysManageSearchBean;
import com.retech.qc.entity.custom.DatalibrarysCustomBean;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.LinkedHashMap;
import java.util.List;

/**
 * 自定义mapper类
 */
@Repository
public interface DatalibrarysManageCustomMapper {
	/**
	 * 查询自定义资源库数据列表
	 * @param example
	 * @return
	 */
    List<DatalibrarysCustomBean> selectByExample(DataLibrarysManageSearchBean dataLibrarysManageSearchBean);

	/**
	 * 查询自定义资源库数据数量
	 * @param example
	 * @return
	 */
    int countByExample(DataLibrarysManageSearchBean dataLibrarysManageSearchBean);

	/**
	 * 检查唯一性
	 * @param dbDataLibrarys
	 * @return
	 */
    int checkUniqueness(DatalibrarysCustomBean dbDataLibrarys);
    /**
     * 批量删除资源库
     * @param dbids
     * @return
     */
    int deleteBatch(List<String> dbids);
    

    int insertSelective(DatalibrarysCustomBean record);
    
    int updateByPrimaryKeySelective(DatalibrarysCustomBean record);
    /**
     * 创建表
     * @param sql
     * @return
     */
    int createNewTable(@Param("sql") String sql);
    /**
     * 修改表
     * @param sql
     * @return
     */
    int alterTable(@Param("sql") String sql);
    /**
     * 删除表
     * @param tableName
     * @return
     */
    int dropTable(@Param("tableName") String tableName);
    /**
     * 查询列名
     * @param tableName
     * @return
     */
    List<String> showColumns(String tableName);
    
    /**
     * 资源数量
     * @param sql
     * @return
     */
    int getResCount(@Param("sql") String sql);
    
    /**
     * 资源列表
     * @param sql
     * @return
     */
    List<LinkedHashMap<String, Object>> getResList(@Param("sql") String sql);
	/**
	 * 查询自定义资源库数据列表
	 * @param example
	 * @return
	 */
    List<DatalibrarysCustomBean> selectByUserId(String userId);

	int editRes(@Param("sql") String sql);
	
	int checkunique(@Param("sql") String sql);
}
