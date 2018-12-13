package com.retech.qc.entity.custom;

import com.retech.qc.entity.DbMoulds;


/**

 *@description
 
 *@author qinc

 *@date 2018/12/11

 */
public class MouldsCustomBean extends DbMoulds {
	
	private String mouldtypename;
	
	public String getMouldtypename() {
		return mouldtypename;
	}

	public void setMouldtypename(String mouldtypename) {
		this.mouldtypename = mouldtypename;
	}
}
