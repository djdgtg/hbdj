package com.retech.qc.entity.custom;

import com.retech.qc.entity.BaseClasses;

import java.util.List;


public class ClassesCustomBean extends BaseClasses {
    private List<ClassesCustomBean> children;
    private String parentclassname;

	/**
	 * @return the children
	 */
	public List<ClassesCustomBean> getChildren() {
		return children;
	}

	/**
	 * @param children the children to set
	 */
	public void setChildren(List<ClassesCustomBean> children) {
		this.children = children;
	}

	/**
	 * @return the parentclassname
	 */
	public String getParentclassname() {
		return parentclassname;
	}

	/**
	 * @param parentclassname the parentclassname to set
	 */
	public void setParentclassname(String parentclassname) {
		this.parentclassname = parentclassname;
	}

}