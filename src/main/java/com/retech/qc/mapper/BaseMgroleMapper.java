package com.retech.qc.mapper;

import com.retech.qc.entity.BaseMgrole;
import com.retech.qc.entity.BaseMgroleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**

 *@description
 
 *@author qinc

 *@date 2018/12/11

 */
public interface BaseMgroleMapper {
    int countByExample(BaseMgroleExample example);

    int deleteByExample(BaseMgroleExample example);

    int insert(BaseMgrole record);

    int insertSelective(BaseMgrole record);

    List<BaseMgrole> selectByExample(BaseMgroleExample example);

    int updateByExampleSelective(@Param("record") BaseMgrole record, @Param("example") BaseMgroleExample example);

    int updateByExample(@Param("record") BaseMgrole record, @Param("example") BaseMgroleExample example);
}