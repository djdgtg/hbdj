package com.retech.qc.entity.custom;

import java.util.List;

public class CustomSearchBean {
	
	private Integer start;
	
	private Integer length;
	
	private List<Order> order = null;

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getLength() {
		return length;
	}

	public void setLength(Integer length) {
		this.length = length;
	}

	public List<Order> getOrder() {
		return order;
	}

	public void setOrder(List<Order> order) {
		this.order = order;
	}
	
}
