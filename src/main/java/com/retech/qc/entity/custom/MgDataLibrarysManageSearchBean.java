package com.retech.qc.entity.custom;

/**
 * 查询bean
 * 
 * @author yangwr
 * @createTime 2017-09-10
 *
 */
public class MgDataLibrarysManageSearchBean{
/*public class MgDataLibrarysManageSearchBean extends QueryExtendBean {*/

    /**
     * databaseId
     */
    private String databaseId;
    /**
     * userId
     */
    private String userId;
	/**
	 * @return the databaseId
	 */
	public String getDatabaseId() {
		return databaseId;
	}
	/**
	 * @param databaseId the databaseId to set
	 */
	public void setDatabaseId(String databaseId) {
		this.databaseId = databaseId;
	}
	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
    

}
