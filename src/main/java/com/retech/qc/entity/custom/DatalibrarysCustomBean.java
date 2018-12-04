package com.retech.qc.entity.custom;

import com.retech.qc.entity.DbDatalibrarys;
import com.retech.qc.entity.DbLibrarynexus;

import java.util.List;

public class DatalibrarysCustomBean extends DbDatalibrarys {
	private String mouldname;//模型名
	private String mouldtypename;//模型类型名
	private Integer mouldtype;
	private List<DbLibrarynexus> libraryNexus;
	private String statusname;
	private String datasteptypename;
	private Integer parentmenuid;
	
	
	/**
	 * @return the mouldname
	 */
	public String getMouldname() {
		return mouldname;
	}
	/**
	 * @param mouldname the mouldname to set
	 */
	public void setMouldname(String mouldname) {
		this.mouldname = mouldname;
	}
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
	/**
	 * @return the libraryNexus
	 */
	public List<DbLibrarynexus> getLibraryNexus() {
		return libraryNexus;
	}
	/**
	 * @param libraryNexus the libraryNexus to set
	 */
	public void setLibraryNexus(List<DbLibrarynexus> libraryNexus) {
		this.libraryNexus = libraryNexus;
	}
	/**
	 * @return the mouldtype
	 */
	public Integer getMouldtype() {
		return mouldtype;
	}
	/**
	 * @param mouldtype the mouldtype to set
	 */
	public void setMouldtype(Integer mouldtype) {
		this.mouldtype = mouldtype;
	}
	/**
	 * @return the statusname
	 */
	public String getStatusname() {
		return statusname;
	}
	/**
	 * @param statusname the statusname to set
	 */
	public void setStatusname(String statusname) {
		this.statusname = statusname;
	}
	/**
	 * @return the datasteptypename
	 */
	public String getDatasteptypename() {
		return datasteptypename;
	}
	/**
	 * @param datasteptypename the datasteptypename to set
	 */
	public void setDatasteptypename(String datasteptypename) {
		this.datasteptypename = datasteptypename;
	}
	public Integer getParentmenuid() {
		return parentmenuid;
	}
	public void setParentmenuid(Integer parentmenuid) {
		this.parentmenuid = parentmenuid;
	}
}
