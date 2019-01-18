package com.retech.qc.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * Table: nation
 * Author: qinc
 * Date: 2019-01-18 14:45:07
 */
@Data
public class Nation implements Serializable {
    /**
     * 主键
     * Column:    NationID
     * Nullable:  false
     */
    private Integer nationid;

    /**
     * 名族名
     * Column:    NationName
     * Nullable:  false
     */
    private String nationname;

    private static final long serialVersionUID = 1L;
}