package com.retech.qc.entity;

import java.util.ArrayList;
import java.util.List;


/**

 *@description
 
 *@author qinc

 *@date 2018/12/11

 */
public class DbDatalibrarysExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DbDatalibrarysExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andDatabaseidIsNull() {
            addCriterion("DataBaseID is null");
            return (Criteria) this;
        }

        public Criteria andDatabaseidIsNotNull() {
            addCriterion("DataBaseID is not null");
            return (Criteria) this;
        }

        public Criteria andDatabaseidEqualTo(Integer value) {
            addCriterion("DataBaseID =", value, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidNotEqualTo(Integer value) {
            addCriterion("DataBaseID <>", value, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidGreaterThan(Integer value) {
            addCriterion("DataBaseID >", value, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidGreaterThanOrEqualTo(Integer value) {
            addCriterion("DataBaseID >=", value, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidLessThan(Integer value) {
            addCriterion("DataBaseID <", value, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidLessThanOrEqualTo(Integer value) {
            addCriterion("DataBaseID <=", value, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidIn(List<Integer> values) {
            addCriterion("DataBaseID in", values, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidNotIn(List<Integer> values) {
            addCriterion("DataBaseID not in", values, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidBetween(Integer value1, Integer value2) {
            addCriterion("DataBaseID between", value1, value2, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabaseidNotBetween(Integer value1, Integer value2) {
            addCriterion("DataBaseID not between", value1, value2, "databaseid");
            return (Criteria) this;
        }

        public Criteria andDatabasenameIsNull() {
            addCriterion("DataBaseName is null");
            return (Criteria) this;
        }

        public Criteria andDatabasenameIsNotNull() {
            addCriterion("DataBaseName is not null");
            return (Criteria) this;
        }

        public Criteria andDatabasenameEqualTo(String value) {
            addCriterion("DataBaseName =", value, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameNotEqualTo(String value) {
            addCriterion("DataBaseName <>", value, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameGreaterThan(String value) {
            addCriterion("DataBaseName >", value, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameGreaterThanOrEqualTo(String value) {
            addCriterion("DataBaseName >=", value, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameLessThan(String value) {
            addCriterion("DataBaseName <", value, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameLessThanOrEqualTo(String value) {
            addCriterion("DataBaseName <=", value, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameLike(String value) {
            addCriterion("DataBaseName like", value, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameNotLike(String value) {
            addCriterion("DataBaseName not like", value, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameIn(List<String> values) {
            addCriterion("DataBaseName in", values, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameNotIn(List<String> values) {
            addCriterion("DataBaseName not in", values, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameBetween(String value1, String value2) {
            addCriterion("DataBaseName between", value1, value2, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasenameNotBetween(String value1, String value2) {
            addCriterion("DataBaseName not between", value1, value2, "databasename");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameIsNull() {
            addCriterion("DataBaseCName is null");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameIsNotNull() {
            addCriterion("DataBaseCName is not null");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameEqualTo(String value) {
            addCriterion("DataBaseCName =", value, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameNotEqualTo(String value) {
            addCriterion("DataBaseCName <>", value, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameGreaterThan(String value) {
            addCriterion("DataBaseCName >", value, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameGreaterThanOrEqualTo(String value) {
            addCriterion("DataBaseCName >=", value, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameLessThan(String value) {
            addCriterion("DataBaseCName <", value, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameLessThanOrEqualTo(String value) {
            addCriterion("DataBaseCName <=", value, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameLike(String value) {
            addCriterion("DataBaseCName like", value, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameNotLike(String value) {
            addCriterion("DataBaseCName not like", value, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameIn(List<String> values) {
            addCriterion("DataBaseCName in", values, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameNotIn(List<String> values) {
            addCriterion("DataBaseCName not in", values, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameBetween(String value1, String value2) {
            addCriterion("DataBaseCName between", value1, value2, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDatabasecnameNotBetween(String value1, String value2) {
            addCriterion("DataBaseCName not between", value1, value2, "databasecname");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("Description is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("Description is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("Description =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("Description <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("Description >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("Description >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("Description <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("Description <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("Description like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("Description not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("Description in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("Description not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("Description between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("Description not between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andMouldidIsNull() {
            addCriterion("MouldID is null");
            return (Criteria) this;
        }

        public Criteria andMouldidIsNotNull() {
            addCriterion("MouldID is not null");
            return (Criteria) this;
        }

        public Criteria andMouldidEqualTo(Integer value) {
            addCriterion("MouldID =", value, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidNotEqualTo(Integer value) {
            addCriterion("MouldID <>", value, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidGreaterThan(Integer value) {
            addCriterion("MouldID >", value, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidGreaterThanOrEqualTo(Integer value) {
            addCriterion("MouldID >=", value, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidLessThan(Integer value) {
            addCriterion("MouldID <", value, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidLessThanOrEqualTo(Integer value) {
            addCriterion("MouldID <=", value, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidIn(List<Integer> values) {
            addCriterion("MouldID in", values, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidNotIn(List<Integer> values) {
            addCriterion("MouldID not in", values, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidBetween(Integer value1, Integer value2) {
            addCriterion("MouldID between", value1, value2, "mouldid");
            return (Criteria) this;
        }

        public Criteria andMouldidNotBetween(Integer value1, Integer value2) {
            addCriterion("MouldID not between", value1, value2, "mouldid");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("Status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("Status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("Status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("Status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("Status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("Status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("Status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("Status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("Status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("Status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("Status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("Status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeIsNull() {
            addCriterion("DataStepType is null");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeIsNotNull() {
            addCriterion("DataStepType is not null");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeEqualTo(Integer value) {
            addCriterion("DataStepType =", value, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeNotEqualTo(Integer value) {
            addCriterion("DataStepType <>", value, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeGreaterThan(Integer value) {
            addCriterion("DataStepType >", value, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("DataStepType >=", value, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeLessThan(Integer value) {
            addCriterion("DataStepType <", value, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeLessThanOrEqualTo(Integer value) {
            addCriterion("DataStepType <=", value, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeIn(List<Integer> values) {
            addCriterion("DataStepType in", values, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeNotIn(List<Integer> values) {
            addCriterion("DataStepType not in", values, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeBetween(Integer value1, Integer value2) {
            addCriterion("DataStepType between", value1, value2, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatasteptypeNotBetween(Integer value1, Integer value2) {
            addCriterion("DataStepType not between", value1, value2, "datasteptype");
            return (Criteria) this;
        }

        public Criteria andDatastatusIsNull() {
            addCriterion("DataStatus is null");
            return (Criteria) this;
        }

        public Criteria andDatastatusIsNotNull() {
            addCriterion("DataStatus is not null");
            return (Criteria) this;
        }

        public Criteria andDatastatusEqualTo(Integer value) {
            addCriterion("DataStatus =", value, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusNotEqualTo(Integer value) {
            addCriterion("DataStatus <>", value, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusGreaterThan(Integer value) {
            addCriterion("DataStatus >", value, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("DataStatus >=", value, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusLessThan(Integer value) {
            addCriterion("DataStatus <", value, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusLessThanOrEqualTo(Integer value) {
            addCriterion("DataStatus <=", value, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusIn(List<Integer> values) {
            addCriterion("DataStatus in", values, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusNotIn(List<Integer> values) {
            addCriterion("DataStatus not in", values, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusBetween(Integer value1, Integer value2) {
            addCriterion("DataStatus between", value1, value2, "datastatus");
            return (Criteria) this;
        }

        public Criteria andDatastatusNotBetween(Integer value1, Integer value2) {
            addCriterion("DataStatus not between", value1, value2, "datastatus");
            return (Criteria) this;
        }

        public Criteria andIswareIsNull() {
            addCriterion("IsWare is null");
            return (Criteria) this;
        }

        public Criteria andIswareIsNotNull() {
            addCriterion("IsWare is not null");
            return (Criteria) this;
        }

        public Criteria andIswareEqualTo(Integer value) {
            addCriterion("IsWare =", value, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareNotEqualTo(Integer value) {
            addCriterion("IsWare <>", value, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareGreaterThan(Integer value) {
            addCriterion("IsWare >", value, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareGreaterThanOrEqualTo(Integer value) {
            addCriterion("IsWare >=", value, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareLessThan(Integer value) {
            addCriterion("IsWare <", value, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareLessThanOrEqualTo(Integer value) {
            addCriterion("IsWare <=", value, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareIn(List<Integer> values) {
            addCriterion("IsWare in", values, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareNotIn(List<Integer> values) {
            addCriterion("IsWare not in", values, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareBetween(Integer value1, Integer value2) {
            addCriterion("IsWare between", value1, value2, "isware");
            return (Criteria) this;
        }

        public Criteria andIswareNotBetween(Integer value1, Integer value2) {
            addCriterion("IsWare not between", value1, value2, "isware");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolIsNull() {
            addCriterion("PerfectFileCol is null");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolIsNotNull() {
            addCriterion("PerfectFileCol is not null");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolEqualTo(String value) {
            addCriterion("PerfectFileCol =", value, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolNotEqualTo(String value) {
            addCriterion("PerfectFileCol <>", value, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolGreaterThan(String value) {
            addCriterion("PerfectFileCol >", value, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolGreaterThanOrEqualTo(String value) {
            addCriterion("PerfectFileCol >=", value, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolLessThan(String value) {
            addCriterion("PerfectFileCol <", value, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolLessThanOrEqualTo(String value) {
            addCriterion("PerfectFileCol <=", value, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolLike(String value) {
            addCriterion("PerfectFileCol like", value, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolNotLike(String value) {
            addCriterion("PerfectFileCol not like", value, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolIn(List<String> values) {
            addCriterion("PerfectFileCol in", values, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolNotIn(List<String> values) {
            addCriterion("PerfectFileCol not in", values, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolBetween(String value1, String value2) {
            addCriterion("PerfectFileCol between", value1, value2, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andPerfectfilecolNotBetween(String value1, String value2) {
            addCriterion("PerfectFileCol not between", value1, value2, "perfectfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolIsNull() {
            addCriterion("ProcessFileCol is null");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolIsNotNull() {
            addCriterion("ProcessFileCol is not null");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolEqualTo(String value) {
            addCriterion("ProcessFileCol =", value, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolNotEqualTo(String value) {
            addCriterion("ProcessFileCol <>", value, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolGreaterThan(String value) {
            addCriterion("ProcessFileCol >", value, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolGreaterThanOrEqualTo(String value) {
            addCriterion("ProcessFileCol >=", value, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolLessThan(String value) {
            addCriterion("ProcessFileCol <", value, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolLessThanOrEqualTo(String value) {
            addCriterion("ProcessFileCol <=", value, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolLike(String value) {
            addCriterion("ProcessFileCol like", value, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolNotLike(String value) {
            addCriterion("ProcessFileCol not like", value, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolIn(List<String> values) {
            addCriterion("ProcessFileCol in", values, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolNotIn(List<String> values) {
            addCriterion("ProcessFileCol not in", values, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolBetween(String value1, String value2) {
            addCriterion("ProcessFileCol between", value1, value2, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andProcessfilecolNotBetween(String value1, String value2) {
            addCriterion("ProcessFileCol not between", value1, value2, "processfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolIsNull() {
            addCriterion("ReadFileCol is null");
            return (Criteria) this;
        }

        public Criteria andReadfilecolIsNotNull() {
            addCriterion("ReadFileCol is not null");
            return (Criteria) this;
        }

        public Criteria andReadfilecolEqualTo(String value) {
            addCriterion("ReadFileCol =", value, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolNotEqualTo(String value) {
            addCriterion("ReadFileCol <>", value, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolGreaterThan(String value) {
            addCriterion("ReadFileCol >", value, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolGreaterThanOrEqualTo(String value) {
            addCriterion("ReadFileCol >=", value, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolLessThan(String value) {
            addCriterion("ReadFileCol <", value, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolLessThanOrEqualTo(String value) {
            addCriterion("ReadFileCol <=", value, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolLike(String value) {
            addCriterion("ReadFileCol like", value, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolNotLike(String value) {
            addCriterion("ReadFileCol not like", value, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolIn(List<String> values) {
            addCriterion("ReadFileCol in", values, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolNotIn(List<String> values) {
            addCriterion("ReadFileCol not in", values, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolBetween(String value1, String value2) {
            addCriterion("ReadFileCol between", value1, value2, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andReadfilecolNotBetween(String value1, String value2) {
            addCriterion("ReadFileCol not between", value1, value2, "readfilecol");
            return (Criteria) this;
        }

        public Criteria andParentmenuidIsNull() {
            addCriterion("ParentMenuId is null");
            return (Criteria) this;
        }

        public Criteria andParentmenuidIsNotNull() {
            addCriterion("ParentMenuId is not null");
            return (Criteria) this;
        }

        public Criteria andParentmenuidEqualTo(Integer value) {
            addCriterion("ParentMenuId =", value, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidNotEqualTo(Integer value) {
            addCriterion("ParentMenuId <>", value, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidGreaterThan(Integer value) {
            addCriterion("ParentMenuId >", value, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidGreaterThanOrEqualTo(Integer value) {
            addCriterion("ParentMenuId >=", value, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidLessThan(Integer value) {
            addCriterion("ParentMenuId <", value, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidLessThanOrEqualTo(Integer value) {
            addCriterion("ParentMenuId <=", value, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidIn(List<Integer> values) {
            addCriterion("ParentMenuId in", values, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidNotIn(List<Integer> values) {
            addCriterion("ParentMenuId not in", values, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidBetween(Integer value1, Integer value2) {
            addCriterion("ParentMenuId between", value1, value2, "parentmenuid");
            return (Criteria) this;
        }

        public Criteria andParentmenuidNotBetween(Integer value1, Integer value2) {
            addCriterion("ParentMenuId not between", value1, value2, "parentmenuid");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}