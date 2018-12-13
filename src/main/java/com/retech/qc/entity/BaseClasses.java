package com.retech.qc.entity;


/**

 *@description

 *@author qinc

 *@date 2018/12/11

 */
public class BaseClasses {
    private Integer classid;

    private Integer parentclassid;

    private String classname;

    private String classimg;

    private String classdescription;

    private Integer sort;

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }

    public Integer getParentclassid() {
        return parentclassid;
    }

    public void setParentclassid(Integer parentclassid) {
        this.parentclassid = parentclassid;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname == null ? null : classname.trim();
    }

    public String getClassimg() {
        return classimg;
    }

    public void setClassimg(String classimg) {
        this.classimg = classimg == null ? null : classimg.trim();
    }

    public String getClassdescription() {
        return classdescription;
    }

    public void setClassdescription(String classdescription) {
        this.classdescription = classdescription == null ? null : classdescription.trim();
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }
}