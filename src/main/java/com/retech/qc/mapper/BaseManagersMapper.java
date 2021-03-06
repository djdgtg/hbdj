package com.retech.qc.mapper;

import com.retech.qc.entity.BaseManagers;
import com.retech.qc.entity.BaseManagersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface BaseManagersMapper {
    int countByExample(BaseManagersExample example);

    int deleteByExample(BaseManagersExample example);

    int deleteByPrimaryKey(Integer userid);

    int insert(BaseManagers record);

    int insertSelective(BaseManagers record);

    List<BaseManagers> selectByExampleWithRowbounds(BaseManagersExample example, RowBounds rowBounds);

    List<BaseManagers> selectByExample(BaseManagersExample example);

    BaseManagers selectByPrimaryKey(Integer userid);

    int updateByExampleSelective(@Param("record") BaseManagers record, @Param("example") BaseManagersExample example);

    int updateByExample(@Param("record") BaseManagers record, @Param("example") BaseManagersExample example);

    int updateByPrimaryKeySelective(BaseManagers record);

    int updateByPrimaryKey(BaseManagers record);
}