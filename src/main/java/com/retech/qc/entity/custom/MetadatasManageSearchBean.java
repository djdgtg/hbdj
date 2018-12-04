package com.retech.qc.entity.custom;

/**
 * 查询bean
 */
public class MetadatasManageSearchBean{
/*
public class MetadatasManageSearchBean extends QueryExtendBean {
*/

    /**
     * mouldId
     */
    private String mouldId;
    /**
     * metadataId
     */
    private String metadataId;
    
    private String metadataIds;
    
    private String databaseName;
    
    private String databaseId;
    
    private String fieldName;
    
    private int fieldValue;

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
	 * @return the metadataId
	 */
	public String getMetadataId() {
		return metadataId;
	}

	/**
	 * @param metadataId the metadataId to set
	 */
	public void setMetadataId(String metadataId) {
		this.metadataId = metadataId;
	}

	/**
	 * @return the metadataIds
	 */
	public String getMetadataIds() {
		return metadataIds;
	}

	/**
	 * @param metadataIds the metadataIds to set
	 */
	public void setMetadataIds(String metadataIds) {
		this.metadataIds = metadataIds;
	}

	/**
	 * @return the databaseName
	 */
	public String getDatabaseName() {
		return databaseName;
	}

	/**
	 * @param databaseName the databaseName to set
	 */
	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName;
	}

	/**
	 * @return the fieldName
	 */
	public String getFieldName() {
		return fieldName;
	}

	/**
	 * @param fieldName the fieldName to set
	 */
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	/**
	 * @return the fieldValue
	 */
	public int getFieldValue() {
		return fieldValue;
	}

	/**
	 * @param fieldValue the fieldValue to set
	 */
	public void setFieldValue(int fieldValue) {
		this.fieldValue = fieldValue;
	}

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
	
}
