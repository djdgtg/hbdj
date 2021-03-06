package com.retech.qc.service;

import com.retech.qc.entity.BaseMenus;
import com.retech.qc.utils.ActionResult;

/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
public interface MenusService {

    String gethtmlmenu(Integer loginId);

    ActionResult listCustom();

    ActionResult add(BaseMenus menus);

    ActionResult update(BaseMenus menus);

    ActionResult del(Integer menuId);

}
