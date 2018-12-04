package com.retech.qc.entity.custom;

import java.util.List;

public class Options {
	private int id;
	private String text;
	private boolean selected;
	private Object tag;
	private List<Options> children;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}
	/**
	 * @param text the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}
	/**
	 * @return the selected
	 */
	public boolean isSelected() {
		return selected;
	}
	/**
	 * @param selected the selected to set
	 */
	public void setSelected(boolean selected) {
		this.selected = selected;
	}
	/**
	 * @return the tag
	 */
	public Object getTag() {
		return tag;
	}
	/**
	 * @param tag the tag to set
	 */
	public void setTag(Object tag) {
		this.tag = tag;
	}
	/**
	 * @return the children
	 */
	public List<Options> getChildren() {
		return children;
	}
	/**
	 * @param children the children to set
	 */
	public void setChildren(List<Options> children) {
		this.children = children;
	}
}
