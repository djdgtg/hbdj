package com.retech.qc.mapper;

import com.retech.qc.entity.BaseManagers;
import com.retech.qc.entity.BaseManagersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
/**

 *@description

 *@author qinc

 *@date 2018/12/11

 */
public interface BaseManagersMapper {
    int countByExample(BaseManagersExample example);

    int deleteByExample(BaseManagersExample example);

    int deleteByPrimaryKey(Integer userid);

    int insert(BaseManagers record);

    int insertSelective(BaseManagers record);

    List<BaseManagers> selectByExample(BaseManagersExample example);

    BaseManagers selectByPrimaryKey(Integer userid);

    int updateByExampleSelective(@Param("record") BaseManagers record, @Param("example") BaseManagersExample example);

    int updateByExample(@Param("record") BaseManagers record, @Param("example") BaseManagersExample example);

    int updateByPrimaryKeySelective(BaseManagers record);

    int updateByPrimaryKey(BaseManagers record);
}