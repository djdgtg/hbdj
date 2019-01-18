package com.retech.qc.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * Table: base_rolemenu
 * Author: qinc
 * Date: 2019-01-18 14:45:07
 */
@Data
public class BaseRolemenu implements Serializable {
    /**
     * Column:    ID
     * Nullable:  false
     */
    private Integer id;

    /**
     * 角色ID
     * Column:    RoleID
     * Nullable:  true
     */
    private Integer roleid;

    /**
     * 菜单ID
     * Column:    MenuID
     * Nullable:  true
     */
    private Integer menuid;

    private static final long serialVersionUID = 1L;
}