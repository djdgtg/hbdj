package com.retech.qc.mapper;

import com.retech.qc.entity.FrontProduct;
import com.retech.qc.entity.FrontProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface FrontProductMapper {
    int countByExample(FrontProductExample example);

    int deleteByExample(FrontProductExample example);

    int deleteByPrimaryKey(Integer seqid);

    int insert(FrontProduct record);

    int insertSelective(FrontProduct record);

    List<FrontProduct> selectByExampleWithBLOBsWithRowbounds(FrontProductExample example, RowBounds rowBounds);

    List<FrontProduct> selectByExampleWithBLOBs(FrontProductExample example);

    List<FrontProduct> selectByExampleWithRowbounds(FrontProductExample example, RowBounds rowBounds);

    List<FrontProduct> selectByExample(FrontProductExample example);

    FrontProduct selectByPrimaryKey(Integer seqid);

    int updateByExampleSelective(@Param("record") FrontProduct record, @Param("example") FrontProductExample example);

    int updateByExampleWithBLOBs(@Param("record") FrontProduct record, @Param("example") FrontProductExample example);

    int updateByExample(@Param("record") FrontProduct record, @Param("example") FrontProductExample example);

    int updateByPrimaryKeySelective(FrontProduct record);

    int updateByPrimaryKeyWithBLOBs(FrontProduct record);

    int updateByPrimaryKey(FrontProduct record);
}