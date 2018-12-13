package com.retech.qc.mapper;

import com.retech.qc.entity.BaseClasses;
import com.retech.qc.entity.BaseClassesExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface BaseClassesMapper {

    int countByExample(BaseClassesExample example);

    int deleteByExample(BaseClassesExample example);

    int deleteByPrimaryKey(Integer classid);

    int insert(BaseClasses record);

    int insertSelective(BaseClasses record);

    List<BaseClasses> selectByExample(BaseClassesExample example);

    BaseClasses selectByPrimaryKey(Integer classid);

    int updateByExampleSelective(@Param("record") BaseClasses record, @Param("example") BaseClassesExample example);

    int updateByExample(@Param("record") BaseClasses record, @Param("example") BaseClassesExample example);

    int updateByPrimaryKeySelective(BaseClasses record);

    int updateByPrimaryKey(BaseClasses record);
}