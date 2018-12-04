package com.retech.qc.entity.custom;

import java.util.ArrayList;
import java.util.List;

public class TreeBean {
	private String text;
	private Integer id;
	private Integer parentId;
	private List<TreeBean> nodes;
	private List<TreeBean> children;
	
	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}
	/**
	 * @param text the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}
	/**
	 * @return the nodes
	 */
	public List<TreeBean> getNodes() {
		return nodes;
	}
	/**
	 * @param nodes the nodes to set
	 */
	public void setNodes(List<TreeBean> nodes) {
		this.nodes = nodes;
	}
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the parentId
	 */
	public Integer getParentId() {
		return parentId;
	}
	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	/**
	 * @return the children
	 */
	public List<TreeBean> getChildren() {
		return children;
	}
	/**
	 * @param children the children to set
	 */
	public void setChildren(List<TreeBean> children) {
		this.children = children;
	}

	//多级菜单查询方法  
    public static List<TreeBean> iterateMenus(List<TreeBean> menuVoList,Integer pid){  
        List<TreeBean> result = new ArrayList<TreeBean>();  
        for (TreeBean menuVo : menuVoList) {  
            Integer menuid = menuVo.getId();//获取菜单的id  
            Integer parentid = menuVo.getParentId();//获取菜单的父id  
            if(parentid.equals(pid)){    
                List<TreeBean> iterateMenu = iterateMenus(menuVoList,menuid);   
                if(iterateMenu != null && iterateMenu.size() > 0){
                    menuVo.setNodes(iterateMenu); 
                    menuVo.setChildren(iterateMenu);  
                }  
                result.add(menuVo);
            }  
        }  
        return result;  
    }  
}
