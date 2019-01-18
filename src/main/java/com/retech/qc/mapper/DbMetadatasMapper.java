package com.retech.qc.mapper;

import com.retech.qc.entity.DbMetadatas;
import com.retech.qc.entity.DbMetadatasExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface DbMetadatasMapper {
    int countByExample(DbMetadatasExample example);

    int deleteByExample(DbMetadatasExample example);

    int deleteByPrimaryKey(Integer metadataid);

    int insert(DbMetadatas record);

    int insertSelective(DbMetadatas record);

    List<DbMetadatas> selectByExampleWithRowbounds(DbMetadatasExample example, RowBounds rowBounds);

    List<DbMetadatas> selectByExample(DbMetadatasExample example);

    DbMetadatas selectByPrimaryKey(Integer metadataid);

    int updateByExampleSelective(@Param("record") DbMetadatas record, @Param("example") DbMetadatasExample example);

    int updateByExample(@Param("record") DbMetadatas record, @Param("example") DbMetadatasExample example);

    int updateByPrimaryKeySelective(DbMetadatas record);

    int updateByPrimaryKey(DbMetadatas record);
}