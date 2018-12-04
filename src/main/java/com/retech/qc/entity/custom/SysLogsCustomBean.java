package com.retech.qc.entity.custom;

import com.retech.qc.entity.BaseLogs;

public class SysLogsCustomBean extends BaseLogs {
	private String creatorName;
	private String logTypeName;

	/**
	 * @return the creatorName
	 */
	public String getCreatorName() {
		return creatorName;
	}

	/**
	 * @param creatorName the creatorName to set
	 */
	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}

	/**
	 * @return the logTypeName
	 */
	public String getLogTypeName() {
		return logTypeName;
	}

	/**
	 * @param logTypeName the logTypeName to set
	 */
	public void setLogTypeName(String logTypeName) {
		this.logTypeName = logTypeName;
	}
}
