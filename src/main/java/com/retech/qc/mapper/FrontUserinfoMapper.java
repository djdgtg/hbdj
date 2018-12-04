package com.retech.qc.mapper;

import com.retech.qc.entity.FrontUserinfo;
import com.retech.qc.entity.FrontUserinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FrontUserinfoMapper {
    int countByExample(FrontUserinfoExample example);

    int deleteByExample(FrontUserinfoExample example);

    int deleteByPrimaryKey(Integer seqid);

    int insert(FrontUserinfo record);

    int insertSelective(FrontUserinfo record);

    List<FrontUserinfo> selectByExampleWithBLOBs(FrontUserinfoExample example);

    List<FrontUserinfo> selectByExample(FrontUserinfoExample example);

    FrontUserinfo selectByPrimaryKey(Integer seqid);

    int updateByExampleSelective(@Param("record") FrontUserinfo record, @Param("example") FrontUserinfoExample example);

    int updateByExampleWithBLOBs(@Param("record") FrontUserinfo record, @Param("example") FrontUserinfoExample example);

    int updateByExample(@Param("record") FrontUserinfo record, @Param("example") FrontUserinfoExample example);

    int updateByPrimaryKeySelective(FrontUserinfo record);

    int updateByPrimaryKeyWithBLOBs(FrontUserinfo record);

    int updateByPrimaryKey(FrontUserinfo record);
}