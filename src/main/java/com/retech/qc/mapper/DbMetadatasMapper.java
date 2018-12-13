package com.retech.qc.mapper;

import com.retech.qc.entity.DbMetadatas;
import com.retech.qc.entity.DbMetadatasExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**

 *@description
 
 *@author qinc

 *@date 2018/12/11

 */
public interface DbMetadatasMapper {
    int countByExample(DbMetadatasExample example);

    int deleteByExample(DbMetadatasExample example);

    int deleteByPrimaryKey(Integer metadataid);

    int insert(DbMetadatas record);

    int insertSelective(DbMetadatas record);

    List<DbMetadatas> selectByExample(DbMetadatasExample example);

    DbMetadatas selectByPrimaryKey(Integer metadataid);

    int updateByExampleSelective(@Param("record") DbMetadatas record, @Param("example") DbMetadatasExample example);

    int updateByExample(@Param("record") DbMetadatas record, @Param("example") DbMetadatasExample example);

    int updateByPrimaryKeySelective(DbMetadatas record);

    int updateByPrimaryKey(DbMetadatas record);
}