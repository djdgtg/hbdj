package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseLogs;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

/**
 * 自定义mapper类
 */
@Repository
public interface SysLogsManageCustomMapper {

    List<BaseLogs> selectByExample(HashMap<String, Object> map);
    
    int countByExample(HashMap<String, Object> map);
}
