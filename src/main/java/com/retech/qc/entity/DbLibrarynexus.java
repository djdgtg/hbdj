package com.retech.qc.entity;

public class DbLibrarynexus {
    private Integer nexusid;

    private String mdbname;

    private String mdbfield;

    private String sdbname;

    private String sdbnamefield;

    private String sdbvaluefield;

    private String sdbsql;

    public Integer getNexusid() {
        return nexusid;
    }

    public void setNexusid(Integer nexusid) {
        this.nexusid = nexusid;
    }

    public String getMdbname() {
        return mdbname;
    }

    public void setMdbname(String mdbname) {
        this.mdbname = mdbname == null ? null : mdbname.trim();
    }

    public String getMdbfield() {
        return mdbfield;
    }

    public void setMdbfield(String mdbfield) {
        this.mdbfield = mdbfield == null ? null : mdbfield.trim();
    }

    public String getSdbname() {
        return sdbname;
    }

    public void setSdbname(String sdbname) {
        this.sdbname = sdbname == null ? null : sdbname.trim();
    }

    public String getSdbnamefield() {
        return sdbnamefield;
    }

    public void setSdbnamefield(String sdbnamefield) {
        this.sdbnamefield = sdbnamefield == null ? null : sdbnamefield.trim();
    }

    public String getSdbvaluefield() {
        return sdbvaluefield;
    }

    public void setSdbvaluefield(String sdbvaluefield) {
        this.sdbvaluefield = sdbvaluefield == null ? null : sdbvaluefield.trim();
    }

    public String getSdbsql() {
        return sdbsql;
    }

    public void setSdbsql(String sdbsql) {
        this.sdbsql = sdbsql == null ? null : sdbsql.trim();
    }
}