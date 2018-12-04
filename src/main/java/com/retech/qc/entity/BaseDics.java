package com.retech.qc.entity;

public class BaseDics {
    private Integer dicid;

    private String dictype;

    private String dicname;

    private String dicvalue;

    private String dictypename;

    private Integer isdictype;

    public Integer getDicid() {
        return dicid;
    }

    public void setDicid(Integer dicid) {
        this.dicid = dicid;
    }

    public String getDictype() {
        return dictype;
    }

    public void setDictype(String dictype) {
        this.dictype = dictype == null ? null : dictype.trim();
    }

    public String getDicname() {
        return dicname;
    }

    public void setDicname(String dicname) {
        this.dicname = dicname == null ? null : dicname.trim();
    }

    public String getDicvalue() {
        return dicvalue;
    }

    public void setDicvalue(String dicvalue) {
        this.dicvalue = dicvalue == null ? null : dicvalue.trim();
    }

    public String getDictypename() {
        return dictypename;
    }

    public void setDictypename(String dictypename) {
        this.dictypename = dictypename == null ? null : dictypename.trim();
    }

    public Integer getIsdictype() {
        return isdictype;
    }

    public void setIsdictype(Integer isdictype) {
        this.isdictype = isdictype;
    }
}