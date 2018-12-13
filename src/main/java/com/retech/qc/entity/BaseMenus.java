package com.retech.qc.entity;


/**

 *@description

 *@author qinc

 *@date 2018/12/11

 */
public class BaseMenus {
    private Integer menuid;

    private String menuname;

    private Integer parentmenuid;

    private String path;

    private String description;

    private Integer sort;

    private Integer isoutlink;

    public Integer getMenuid() {
        return menuid;
    }

    public void setMenuid(Integer menuid) {
        this.menuid = menuid;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname == null ? null : menuname.trim();
    }

    public Integer getParentmenuid() {
        return parentmenuid;
    }

    public void setParentmenuid(Integer parentmenuid) {
        this.parentmenuid = parentmenuid;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getIsoutlink() {
        return isoutlink;
    }

    public void setIsoutlink(Integer isoutlink) {
        this.isoutlink = isoutlink;
    }
}