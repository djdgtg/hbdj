package com.retech.qc.mapper;

import com.retech.qc.entity.Nation;
import com.retech.qc.entity.NationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface NationMapper {
    int countByExample(NationExample example);

    int deleteByExample(NationExample example);

    int deleteByPrimaryKey(Integer nationid);

    int insert(Nation record);

    int insertSelective(Nation record);

    List<Nation> selectByExampleWithRowbounds(NationExample example, RowBounds rowBounds);

    List<Nation> selectByExample(NationExample example);

    Nation selectByPrimaryKey(Integer nationid);

    int updateByExampleSelective(@Param("record") Nation record, @Param("example") NationExample example);

    int updateByExample(@Param("record") Nation record, @Param("example") NationExample example);

    int updateByPrimaryKeySelective(Nation record);

    int updateByPrimaryKey(Nation record);
}