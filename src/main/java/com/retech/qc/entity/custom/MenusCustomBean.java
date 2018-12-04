package com.retech.qc.entity.custom;

import com.retech.qc.entity.BaseMenus;

import java.util.List;


public class MenusCustomBean extends BaseMenus {
	private List<MenusCustomBean> children;
	
	private String parentmenuname;
	

	/**
	 * @return the children
	 */
	public List<MenusCustomBean> getChildren() {
		return children;
	}

	/**
	 * @param children the children to set
	 */
	public void setChildren(List<MenusCustomBean> children) {
		this.children = children;
	}

	/**
	 * @return the parentmenuname
	 */
	public String getParentmenuname() {
		return parentmenuname;
	}

	/**
	 * @param parentmenuname the parentmenuname to set
	 */
	public void setParentmenuname(String parentmenuname) {
		this.parentmenuname = parentmenuname;
	}
}
