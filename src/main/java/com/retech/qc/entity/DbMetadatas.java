package com.retech.qc.entity;

public class DbMetadatas {
    private Integer metadataid;

    private String columnname;

    private String columncname;

    private Integer columntype;

    private Integer columnsource;

    private String columntyperule;

    private String datatype;

    private Integer columnlength;

    private Integer formshow;

    private Integer gridshow;

    private Integer sorts;

    private Integer mouldid;

    private String defaultvalue;

    private Integer searchshow;

    private Integer importandexportshow;

    private Integer required;

    private Integer editable;

    private Integer uniqueness;

    private String validexp;

    private String validmsg;

    public Integer getMetadataid() {
        return metadataid;
    }

    public void setMetadataid(Integer metadataid) {
        this.metadataid = metadataid;
    }

    public String getColumnname() {
        return columnname;
    }

    public void setColumnname(String columnname) {
        this.columnname = columnname == null ? null : columnname.trim();
    }

    public String getColumncname() {
        return columncname;
    }

    public void setColumncname(String columncname) {
        this.columncname = columncname == null ? null : columncname.trim();
    }

    public Integer getColumntype() {
        return columntype;
    }

    public void setColumntype(Integer columntype) {
        this.columntype = columntype;
    }

    public Integer getColumnsource() {
        return columnsource;
    }

    public void setColumnsource(Integer columnsource) {
        this.columnsource = columnsource;
    }

    public String getColumntyperule() {
        return columntyperule;
    }

    public void setColumntyperule(String columntyperule) {
        this.columntyperule = columntyperule == null ? null : columntyperule.trim();
    }

    public String getDatatype() {
        return datatype;
    }

    public void setDatatype(String datatype) {
        this.datatype = datatype == null ? null : datatype.trim();
    }

    public Integer getColumnlength() {
        return columnlength;
    }

    public void setColumnlength(Integer columnlength) {
        this.columnlength = columnlength;
    }

    public Integer getFormshow() {
        return formshow;
    }

    public void setFormshow(Integer formshow) {
        this.formshow = formshow;
    }

    public Integer getGridshow() {
        return gridshow;
    }

    public void setGridshow(Integer gridshow) {
        this.gridshow = gridshow;
    }

    public Integer getSorts() {
        return sorts;
    }

    public void setSorts(Integer sorts) {
        this.sorts = sorts;
    }

    public Integer getMouldid() {
        return mouldid;
    }

    public void setMouldid(Integer mouldid) {
        this.mouldid = mouldid;
    }

    public String getDefaultvalue() {
        return defaultvalue;
    }

    public void setDefaultvalue(String defaultvalue) {
        this.defaultvalue = defaultvalue == null ? null : defaultvalue.trim();
    }

    public Integer getSearchshow() {
        return searchshow;
    }

    public void setSearchshow(Integer searchshow) {
        this.searchshow = searchshow;
    }

    public Integer getImportandexportshow() {
        return importandexportshow;
    }

    public void setImportandexportshow(Integer importandexportshow) {
        this.importandexportshow = importandexportshow;
    }

    public Integer getRequired() {
        return required;
    }

    public void setRequired(Integer required) {
        this.required = required;
    }

    public Integer getEditable() {
        return editable;
    }

    public void setEditable(Integer editable) {
        this.editable = editable;
    }

    public Integer getUniqueness() {
        return uniqueness;
    }

    public void setUniqueness(Integer uniqueness) {
        this.uniqueness = uniqueness;
    }

    public String getValidexp() {
        return validexp;
    }

    public void setValidexp(String validexp) {
        this.validexp = validexp == null ? null : validexp.trim();
    }

    public String getValidmsg() {
        return validmsg;
    }

    public void setValidmsg(String validmsg) {
        this.validmsg = validmsg == null ? null : validmsg.trim();
    }
}