package com.retech.qc.mapper;

import com.retech.qc.entity.BaseDics;
import com.retech.qc.entity.BaseDicsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BaseDicsMapper {
    int countByExample(BaseDicsExample example);

    int deleteByExample(BaseDicsExample example);

    int deleteByPrimaryKey(Integer dicid);

    int insert(BaseDics record);

    int insertSelective(BaseDics record);

    List<BaseDics> selectByExample(BaseDicsExample example);

    BaseDics selectByPrimaryKey(Integer dicid);

    int updateByExampleSelective(@Param("record") BaseDics record, @Param("example") BaseDicsExample example);

    int updateByExample(@Param("record") BaseDics record, @Param("example") BaseDicsExample example);

    int updateByPrimaryKeySelective(BaseDics record);

    int updateByPrimaryKey(BaseDics record);
}