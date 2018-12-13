package com.retech.qc.mapper;

import com.retech.qc.entity.DbMoulds;
import com.retech.qc.entity.DbMouldsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**

 *@description
 
 *@author qinc

 *@date 2018/12/11

 */
public interface DbMouldsMapper {
    int countByExample(DbMouldsExample example);

    int deleteByExample(DbMouldsExample example);

    int deleteByPrimaryKey(Integer mouldid);

    int insert(DbMoulds record);

    int insertSelective(DbMoulds record);

    List<DbMoulds> selectByExample(DbMouldsExample example);

    DbMoulds selectByPrimaryKey(Integer mouldid);

    int updateByExampleSelective(@Param("record") DbMoulds record, @Param("example") DbMouldsExample example);

    int updateByExample(@Param("record") DbMoulds record, @Param("example") DbMouldsExample example);

    int updateByPrimaryKeySelective(DbMoulds record);

    int updateByPrimaryKey(DbMoulds record);
}