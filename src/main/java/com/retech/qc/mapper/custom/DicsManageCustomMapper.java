package com.retech.qc.mapper.custom;

import com.retech.qc.entity.BaseDics;

import java.util.List;

/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface DicsManageCustomMapper {

    int checkUniqueness(BaseDics baseDics);

    int deleteBatch(List<String> classids);

    int checkUniquenessByTypeOrName(BaseDics baseDics);
}
