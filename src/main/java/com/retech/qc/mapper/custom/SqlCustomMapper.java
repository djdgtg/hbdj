package com.retech.qc.mapper.custom;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SqlCustomMapper {

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
    List<Map<String, Object>> getResList(@Param("sql") String sql);
	
}
