package com.retech.qc.entity.custom;

import java.io.Serializable;

public class PageInfo implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1404774159374478734L;

	private Integer total;
	
	private Object rows;

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Object getRows() {
		return rows;
	}

	public void setRows(Object rows) {
		this.rows = rows;
	}

}
