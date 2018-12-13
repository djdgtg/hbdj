package com.retech.qc.entity;


/**

 *@description
 
 *@author qinc

 *@date 2018/12/11

 */
public class DbDatalibrarys {
    private Integer databaseid;

    private String databasename;

    private String databasecname;

    private String description;

    private Integer mouldid;

    private Integer status;

    private Integer datasteptype;

    private Integer datastatus;

    private Integer isware;

    private String perfectfilecol;

    private String processfilecol;

    private String readfilecol;

    private Integer parentmenuid;

    public Integer getDatabaseid() {
        return databaseid;
    }

    public void setDatabaseid(Integer databaseid) {
        this.databaseid = databaseid;
    }

    public String getDatabasename() {
        return databasename;
    }

    public void setDatabasename(String databasename) {
        this.databasename = databasename == null ? null : databasename.trim();
    }

    public String getDatabasecname() {
        return databasecname;
    }

    public void setDatabasecname(String databasecname) {
        this.databasecname = databasecname == null ? null : databasecname.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Integer getMouldid() {
        return mouldid;
    }

    public void setMouldid(Integer mouldid) {
        this.mouldid = mouldid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getDatasteptype() {
        return datasteptype;
    }

    public void setDatasteptype(Integer datasteptype) {
        this.datasteptype = datasteptype;
    }

    public Integer getDatastatus() {
        return datastatus;
    }

    public void setDatastatus(Integer datastatus) {
        this.datastatus = datastatus;
    }

    public Integer getIsware() {
        return isware;
    }

    public void setIsware(Integer isware) {
        this.isware = isware;
    }

    public String getPerfectfilecol() {
        return perfectfilecol;
    }

    public void setPerfectfilecol(String perfectfilecol) {
        this.perfectfilecol = perfectfilecol == null ? null : perfectfilecol.trim();
    }

    public String getProcessfilecol() {
        return processfilecol;
    }

    public void setProcessfilecol(String processfilecol) {
        this.processfilecol = processfilecol == null ? null : processfilecol.trim();
    }

    public String getReadfilecol() {
        return readfilecol;
    }

    public void setReadfilecol(String readfilecol) {
        this.readfilecol = readfilecol == null ? null : readfilecol.trim();
    }

    public Integer getParentmenuid() {
        return parentmenuid;
    }

    public void setParentmenuid(Integer parentmenuid) {
        this.parentmenuid = parentmenuid;
    }
}