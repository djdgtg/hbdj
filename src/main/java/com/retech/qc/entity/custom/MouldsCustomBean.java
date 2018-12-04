package com.retech.qc.entity.custom;

import com.retech.qc.entity.DbMoulds;

public class MouldsCustomBean extends DbMoulds {
	private String mouldtypename;

	/**
	 * @return the mouldtypename
	 */
	public String getMouldtypename() {
		return mouldtypename;
	}

	/**
	 * @param mouldtypename the mouldtypename to set
	 */
	public void setMouldtypename(String mouldtypename) {
		this.mouldtypename = mouldtypename;
	}
}
