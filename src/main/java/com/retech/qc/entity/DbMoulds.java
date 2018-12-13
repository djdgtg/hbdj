package com.retech.qc.entity;


/**

 *@description
 
 *@author qinc

 *@date 2018/12/11

 */
public class DbMoulds {
    private Integer mouldid;

    private String mouldname;

    private Integer mouldtype;

    private String description;

    public Integer getMouldid() {
        return mouldid;
    }

    public void setMouldid(Integer mouldid) {
        this.mouldid = mouldid;
    }

    public String getMouldname() {
        return mouldname;
    }

    public void setMouldname(String mouldname) {
        this.mouldname = mouldname == null ? null : mouldname.trim();
    }

    public Integer getMouldtype() {
        return mouldtype;
    }

    public void setMouldtype(Integer mouldtype) {
        this.mouldtype = mouldtype;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}