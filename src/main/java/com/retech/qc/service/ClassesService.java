package com.retech.qc.service;

import com.retech.qc.entity.BaseClasses;
import com.retech.qc.utils.ActionResult;

/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface ClassesService {

    ActionResult listCustom();

    ActionResult add(BaseClasses baseClasses);

    ActionResult update(BaseClasses baseClasses);

    ActionResult del(Integer classid);

    ActionResult treeList();

    boolean checkUniqueness(BaseClasses baseClasses);

}
