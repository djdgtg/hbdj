package com.retech.qc.entity.custom;

/**
 * 查询bean
 * 
 * @author yangwr
 * @createTime 2017-09-10
 *
 */
public class MouldsManageSearchBean {
/*public class MouldsManageSearchBean extends QueryExtendBean {*/

    /**
     * mouldId
     */
    private String mouldId;
    /**
     * mouldName
     */
    private String mouldName;
    /**
     * mouldType
     */
    private String mouldType;
    
    private String mouldIds;
	/**
	 * @return the mouldId
	 */
	public String getMouldId() {
		return mouldId;
	}
	/**
	 * @param mouldId the mouldId to set
	 */
	public void setMouldId(String mouldId) {
		this.mouldId = mouldId;
	}
	/**
	 * @return the mouldName
	 */
	public String getMouldName() {
		return mouldName;
	}
	/**
	 * @param mouldName the mouldName to set
	 */
	public void setMouldName(String mouldName) {
		this.mouldName = mouldName;
	}
	/**
	 * @return the mouldType
	 */
	public String getMouldType() {
		return mouldType;
	}
	/**
	 * @param mouldType the mouldType to set
	 */
	public void setMouldType(String mouldType) {
		this.mouldType = mouldType;
	}
	/**
	 * @return the mouldIds
	 */
	public String getMouldIds() {
		return mouldIds;
	}
	/**
	 * @param mouldIds the mouldIds to set
	 */
	public void setMouldIds(String mouldIds) {
		this.mouldIds = mouldIds;
	}
	
}
