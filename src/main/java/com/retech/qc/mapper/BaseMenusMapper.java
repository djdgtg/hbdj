package com.retech.qc.mapper;

import com.retech.qc.entity.BaseMenus;
import com.retech.qc.entity.BaseMenusExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**

 *@description
 
 *@author qinc

 *@date 2018/12/11

 */
public interface BaseMenusMapper {
    int countByExample(BaseMenusExample example);

    int deleteByExample(BaseMenusExample example);

    int deleteByPrimaryKey(Integer menuid);

    int insert(BaseMenus record);

    int insertSelective(BaseMenus record);

    List<BaseMenus> selectByExample(BaseMenusExample example);

    BaseMenus selectByPrimaryKey(Integer menuid);

    int updateByExampleSelective(@Param("record") BaseMenus record, @Param("example") BaseMenusExample example);

    int updateByExample(@Param("record") BaseMenus record, @Param("example") BaseMenusExample example);

    int updateByPrimaryKeySelective(BaseMenus record);

    int updateByPrimaryKey(BaseMenus record);
}