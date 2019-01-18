package com.retech.qc.mapper;

import com.retech.qc.entity.BaseRolemenu;
import com.retech.qc.entity.BaseRolemenuExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface BaseRolemenuMapper {
    int countByExample(BaseRolemenuExample example);

    int deleteByExample(BaseRolemenuExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(BaseRolemenu record);

    int insertSelective(BaseRolemenu record);

    List<BaseRolemenu> selectByExampleWithRowbounds(BaseRolemenuExample example, RowBounds rowBounds);

    List<BaseRolemenu> selectByExample(BaseRolemenuExample example);

    BaseRolemenu selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") BaseRolemenu record, @Param("example") BaseRolemenuExample example);

    int updateByExample(@Param("record") BaseRolemenu record, @Param("example") BaseRolemenuExample example);

    int updateByPrimaryKeySelective(BaseRolemenu record);

    int updateByPrimaryKey(BaseRolemenu record);
}