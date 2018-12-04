package com.retech.qc.mapper;

import com.retech.qc.entity.DbDatalibrarys;
import com.retech.qc.entity.DbDatalibrarysExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DbDatalibrarysMapper {
    int countByExample(DbDatalibrarysExample example);

    int deleteByExample(DbDatalibrarysExample example);

    int deleteByPrimaryKey(Integer databaseid);

    int insert(DbDatalibrarys record);

    int insertSelective(DbDatalibrarys record);

    List<DbDatalibrarys> selectByExample(DbDatalibrarysExample example);

    DbDatalibrarys selectByPrimaryKey(Integer databaseid);

    int updateByExampleSelective(@Param("record") DbDatalibrarys record, @Param("example") DbDatalibrarysExample example);

    int updateByExample(@Param("record") DbDatalibrarys record, @Param("example") DbDatalibrarysExample example);

    int updateByPrimaryKeySelective(DbDatalibrarys record);

    int updateByPrimaryKey(DbDatalibrarys record);
}