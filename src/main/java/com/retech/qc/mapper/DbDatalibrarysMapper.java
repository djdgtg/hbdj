package com.retech.qc.mapper;

import com.retech.qc.entity.DbDatalibrarys;
import com.retech.qc.entity.DbDatalibrarysExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface DbDatalibrarysMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int countByExample(DbDatalibrarysExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int deleteByExample(DbDatalibrarysExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int deleteByPrimaryKey(Integer databaseid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int insert(DbDatalibrarys record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int insertSelective(DbDatalibrarys record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    List<DbDatalibrarys> selectByExampleWithRowbounds(DbDatalibrarysExample example, RowBounds rowBounds);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    List<DbDatalibrarys> selectByExample(DbDatalibrarysExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    DbDatalibrarys selectByPrimaryKey(Integer databaseid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int updateByExampleSelective(@Param("record") DbDatalibrarys record, @Param("example") DbDatalibrarysExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int updateByExample(@Param("record") DbDatalibrarys record, @Param("example") DbDatalibrarysExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int updateByPrimaryKeySelective(DbDatalibrarys record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table db_datalibrarys
     *
     * @mbggenerated Wed Jan 16 10:54:37 CST 2019
     */
    int updateByPrimaryKey(DbDatalibrarys record);
}