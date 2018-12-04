package com.retech.qc.entity;

import java.util.Date;

public class BaseLogs {
    private Integer logid;

    private Integer logtype;

    private String logdetail;

    private Integer creator;

    private Date createtime;

    public Integer getLogid() {
        return logid;
    }

    public void setLogid(Integer logid) {
        this.logid = logid;
    }

    public Integer getLogtype() {
        return logtype;
    }

    public void setLogtype(Integer logtype) {
        this.logtype = logtype;
    }

    public String getLogdetail() {
        return logdetail;
    }

    public void setLogdetail(String logdetail) {
        this.logdetail = logdetail == null ? null : logdetail.trim();
    }

    public Integer getCreator() {
        return creator;
    }

    public void setCreator(Integer creator) {
        this.creator = creator;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}