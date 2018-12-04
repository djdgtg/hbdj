package com.retech.qc.entity.custom;

/**
 * 查询bean
 * 
 */
public class OptionsSearchBean {
/*public class OptionsSearchBean extends QueryExtendBean {*/

    /**
     * userId
     */
    private int userId;
    /**
     * roleId
     */
    private int roleId;
    
    private int parentId;
    
    private boolean withNone;
    
	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}
	/**
	 * @return the roleId
	 */
	public int getRoleId() {
		return roleId;
	}
	/**
	 * @param roleId the roleId to set
	 */
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	/**
	 * @return the parentId
	 */
	public int getParentId() {
		return parentId;
	}
	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	/**
	 * @return the withNone
	 */
	public boolean isWithNone() {
		return withNone;
	}
	/**
	 * @param withNone the withNone to set
	 */
	public void setWithNone(boolean withNone) {
		this.withNone = withNone;
	}
    
}
