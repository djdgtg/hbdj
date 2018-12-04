package com.retech.qc.entity.custom;

import com.retech.qc.entity.DbMetadatas;

public class MetadatasCustomBean extends DbMetadatas {
	private String columntypename;//字段类型中文名
	private String columnsourcename;//字段来源中文名
	private String metaType;
	/**
	 * @return the columntypename
	 */
	public String getColumntypename() {
		return columntypename;
	}
	/**
	 * @param columntypename the columntypename to set
	 */
	public void setColumntypename(String columntypename) {
		this.columntypename = columntypename;
	}
	/**
	 * @return the columnsourcename
	 */
	public String getColumnsourcename() {
		return columnsourcename;
	}
	/**
	 * @param columnsourcename the columnsourcename to set
	 */
	public void setColumnsourcename(String columnsourcename) {
		this.columnsourcename = columnsourcename;
	}

	public MetadatasCustomBean(){
		super();
	}
    public MetadatasCustomBean(Integer metaId,String columnName,String columnCName,Integer columnType,Integer columnSource,String columnTypeRule,String dataType,Integer columnLength,Integer formShow,Integer gridShow,Integer sorts,Integer mouldId,String defaultValue,Integer searchShow,String validExp,String metaType){
    	this.setMetadataid(metaId);
    	this.setColumnname(columnName);
    	this.setColumncname(columnCName);
    	this.setColumntype(columnType);
    	this.setColumnsource(columnSource);
    	this.setColumntyperule(columnTypeRule);
    	this.setDatatype(dataType);
    	this.setColumnlength(columnLength);
    	this.setFormshow(formShow);
    	this.setGridshow(gridShow);
    	this.setSorts(sorts);
    	this.setMouldid(mouldId);
    	this.setDefaultvalue(defaultValue);
    	this.setSearchshow(searchShow);
    	this.setValidexp(validExp);
    	this.setMetaType(metaType);
    }
	/**
	 * @return the metaType
	 */
	public String getMetaType() {
		return metaType;
	}
	/**
	 * @param metaType the metaType to set
	 */
	public void setMetaType(String metaType) {
		this.metaType = metaType;
	}
}
