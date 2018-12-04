package com.retech.qc.mapper.custom;

import com.retech.qc.entity.DbMoulds;
import com.retech.qc.entity.custom.MouldsManageSearchBean;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 自定义mapper类
 * 
 */
@Repository
public interface MouldsManageCustomMapper {

    List<DbMoulds> listCustom();

    int count(MouldsManageSearchBean mouldsManageSearchBean);

	/**
	 * 检查唯一性
	 * @param baseMenus
	 * @return
	 */
    int checkUniqueness(DbMoulds dbMoulds);
    /**
     * 批量删除
     * @param mouldids
     * @return
     */
    int deleteBatch(List<String> mouldids);
}
