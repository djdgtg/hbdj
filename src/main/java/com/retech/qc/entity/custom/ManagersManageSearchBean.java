package com.retech.qc.entity.custom;

/**
 * 查询bean
 */
public class ManagersManageSearchBean{
/*
public class ManagersManageSearchBean extends QueryExtendBean {
*/

	/**
	 * userId
	 */
	private Integer userId;
	/**
	 * userName
	 */
	private String userName;
	/**
	 * status
	 */
	private String status;

	private String managerIds;

	private String password;

	private String realName;

	private String oldPswd;

	private Integer roleid;

	private String phone;

	public Integer getRoleid() {
		return roleid;
	}

	public void setRoleid(Integer roleid) {
		this.roleid = roleid;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the managerIds
	 */
	public String getManagerIds() {
		return managerIds;
	}

	/**
	 * @param managerIds
	 *            the managerIds to set
	 */
	public void setManagerIds(String managerIds) {
		this.managerIds = managerIds;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the realName
	 */
	public String getRealName() {
		return realName;
	}

	/**
	 * @param realName
	 *            the realName to set
	 */
	public void setRealName(String realName) {
		this.realName = realName;
	}

	/**
	 * @return the oldPswd
	 */
	public String getOldPswd() {
		return oldPswd;
	}

	/**
	 * @param oldPswd
	 *            the oldPswd to set
	 */
	public void setOldPswd(String oldPswd) {
		this.oldPswd = oldPswd;
	}

}
