package com.retech.qc.service.impl;

import com.retech.qc.aspect.LogType;
import com.retech.qc.entity.*;
import com.retech.qc.entity.custom.*;
import com.retech.qc.mapper.*;
import com.retech.qc.mapper.custom.ClassesManageCustomMapper;
import com.retech.qc.mapper.custom.DatalibrarysManageCustomMapper;
import com.retech.qc.mapper.custom.MetadatasManageCustomMapper;
import com.retech.qc.mapper.custom.SqlCustomMapper;
import com.retech.qc.service.DatalibrarysService;
import com.retech.qc.utils.ActionResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Service
public class DatalibrarysServiceImpl implements DatalibrarysService {

	@Autowired
	private DbDatalibrarysMapper datalibrarysMapper;

	@Autowired
	private DatalibrarysManageCustomMapper datalibrarysCustomMapper;

	@Autowired
	private DbLibrarynexusMapper librarynexusMapper;

	@Autowired
	private MetadatasManageCustomMapper metadatasCustomMapper;

	@Autowired
	private DbMouldsMapper mouldsMapper;

	@Autowired
	private BaseDicsMapper dicsMapper;
	
	@Autowired
	private BaseMenusMapper menusMapper;
	
	@Autowired
	private SqlCustomMapper sqlCustomMapper;

	@Autowired
	private ClassesManageCustomMapper classesCustomMapper;
	
	@Autowired
	private BaseLogsMapper logsMapper;
	
	public ActionResult listCustom(DataLibrarysManageSearchBean searchBean) {
		List<DatalibrarysCustomBean> list = datalibrarysCustomMapper.selectByExample(searchBean);
		return ActionResult.ok(list);
	}

	public ActionResult list(String mouldId) {
		DbDatalibrarysExample example = new DbDatalibrarysExample();
		if (mouldId != null) {
			example.createCriteria().andMouldidEqualTo(Integer.valueOf(mouldId));
		}
		return ActionResult.ok(datalibrarysMapper.selectByExample(example));
	}

	public boolean checkUniqueness(DatalibrarysCustomBean customBean) {
		initDbMsg(customBean);
		return datalibrarysCustomMapper.checkUniqueness(customBean) > 0;
	}

	/**
	 * 初始化资源库信息
	 * 
	 * @param dbCustomBean
	 */
	public void initDbMsg(DatalibrarysCustomBean dbCustomBean) {
		if (dbCustomBean != null) {
			String databaseName = dbCustomBean.getDatabasename();
			if (!databaseName.contains(Constants.SelfDBPrefix)) {
				dbCustomBean.setDatabasename((Constants.SelfDBPrefix + dbCustomBean.getDatabasename()).toLowerCase());
			}
			dbCustomBean.setStatus(1);
			if (dbCustomBean.getDatasteptype() != null) {
				Integer dataStepType = dbCustomBean.getDatasteptype();
				if (dataStepType == Constants.DATASTEPTYPE_JPUB) {
					dbCustomBean.setDatastatus(Constants.RESTATUS_FORPROCESS);
				} else if (dataStepType == Constants.DATASTEPTYPE_ONLYPUB) {
					dbCustomBean.setDatastatus(Constants.RESTATUS_FORPUB);
				} else if (dataStepType == Constants.DATASTEPTYPE_NOPUB) {
					dbCustomBean.setDatastatus(Constants.RESTATUS_PUBED);
				} else {
					dbCustomBean.setDatastatus(Constants.RESTATUS_FORINDEX);
				}
			}
		}
	}

	public ActionResult update(DatalibrarysCustomBean customBean) {
		int res = this.datalibrarysCustomMapper.updateByPrimaryKeySelective(customBean);
		if (res > 0) {
			// 删除原有库关系
			DbLibrarynexusExample nexusExample = new DbLibrarynexusExample();
			nexusExample.createCriteria().andMdbnameEqualTo(customBean.getDatabasename());
			librarynexusMapper.deleteByExample(nexusExample);

			List<DbLibrarynexus> nexusList = customBean.getLibraryNexus();
			if (nexusList != null) {
				for (DbLibrarynexus DbLibrarynexus : nexusList) {
					DbLibrarynexus.setMdbname(customBean.getDatabasename());
					StringBuffer sql = new StringBuffer();
					sql.append("select ").append(DbLibrarynexus.getSdbvaluefield()).append(",")
							.append(DbLibrarynexus.getSdbnamefield()).append(" from ")
							.append(DbLibrarynexus.getSdbname()).append(" order by ")
							.append(DbLibrarynexus.getSdbvaluefield()).append(" asc");
					DbLibrarynexus.setSdbsql(sql.toString());
					// 插入资源库关系数据
					librarynexusMapper.insertSelective(DbLibrarynexus);
				}
			}
			List<String> columnList = datalibrarysCustomMapper.showColumns(customBean.getDatabasename());
			if (columnList != null) {
				List<MetadatasCustomBean> sysMetaList = Constants.initSysMetaList();
				for (int i = 0; i < sysMetaList.size(); i++) {
					boolean isTrue = columnList.contains(sysMetaList.get(i).getColumnname());
					MetadatasCustomBean meta = sysMetaList.get(i);

					if (meta.getMetaType().equals("ware") && customBean.getIsware() == 1) {
						StringBuilder sqlAlter = new StringBuilder();
						sqlAlter.append("alter table ").append(customBean.getDatabasename());
						if (customBean.getIsware() == 1 && !isTrue) {// 需要价格等字段但没有，增加价格字段
							sqlAlter.append(" add ").append(meta.getColumnname()).append(" ").append(meta.getDatatype())
									.append("(").append(meta.getColumnlength()).append(") DEFAULT ")
									.append(meta.getDefaultvalue());
						} else if (customBean.getIsware() == 0 && isTrue) {// 删除价格等字段
							sqlAlter.append(" drop ").append(meta.getColumnname());
						}
						datalibrarysCustomMapper.alterTable(sqlAlter.toString());
					}
				}
			}
		}
		return ActionResult.ok();
	}

	public ActionResult add(DatalibrarysCustomBean customBean) {
		List<MetadatasCustomBean> metaList = metadatasCustomMapper.selectByExample(customBean.getMouldid().toString());
		// 插入资源库数据
		int res = datalibrarysCustomMapper.insertSelective(customBean);
		if (res > 0) {
			List<DbLibrarynexus> nexusList = customBean.getLibraryNexus();
			if (nexusList != null) {
				for (DbLibrarynexus DbLibrarynexus : nexusList) {
					DbLibrarynexus.setMdbname(customBean.getDatabasename());
					StringBuffer sql = new StringBuffer();
					sql.append("select ").append(DbLibrarynexus.getSdbvaluefield()).append(",")
							.append(DbLibrarynexus.getSdbnamefield()).append(" from ")
							.append(DbLibrarynexus.getSdbname()).append(" order by ")
							.append(DbLibrarynexus.getSdbvaluefield()).append(" asc");
					DbLibrarynexus.setSdbsql(sql.toString());
					// 插入资源库关系数据
					datalibrarysMapper.insertSelective(customBean);
				}
			}
			// 查询模型类型
			DbMoulds mould = mouldsMapper.selectByPrimaryKey(customBean.getMouldid());

			List<MetadatasCustomBean> sysMetaList = Constants.initSysMetaList();
			for (int i = 0; i < sysMetaList.size(); i++) {
				MetadatasCustomBean meta = sysMetaList.get(i);
				if (meta.getMetaType().equals("sys")) {
					metaList.add(meta);
				}
				if (meta.getMetaType().equals("source") && (mould != null && (mould.getMouldtype() == 3
						|| customBean.getDatasteptype() == 2 || customBean.getDatasteptype() == 3))) {
					metaList.add(meta);
				}
				if (meta.getMetaType().equals("ware") && customBean.getIsware() == 1) {
					metaList.add(meta);
				}
				if (meta.getMetaType().equals("status")) {
					meta.setDefaultvalue(customBean.getDatastatus().toString());
				}
			}
			// 创建数据库表
			String createSql = getCreateTableSQL(metaList, customBean.getDatabasename(), customBean.getDatabasecname());
			datalibrarysCustomMapper.createNewTable(createSql);
		}
		return ActionResult.ok();

	}

	/**
	 * 获取SQL
	 * 
	 * @param metaList
	 * @param tablename
	 * @return
	 */
	public String getCreateTableSQL(List<MetadatasCustomBean> metaList, String tablename, String tablecname) {
		 StringBuilder sqlCreate = new StringBuilder();
	        sqlCreate.append("create table ").append(tablename).append(" (");
	        sqlCreate.append("seqid int NOT NULL PRIMARY KEY AUTO_INCREMENT ,");
	        for(MetadatasCustomBean metadata : metaList){
	        	sqlCreate.append(" ").append(metadata.getColumnname()).append(" ").append(metadata.getDatatype());
	        	if (metadata.getColumntype()==1){//单行文本
	            	if(metadata.getColumnlength() == null || metadata.getColumnlength() == 0){
	                	sqlCreate.append("(100)");
	            	}else{
	                	sqlCreate.append("(").append(metadata.getColumnlength()).append(")");
	            	}
	            }else if(metadata.getColumntype()==2){//多行文本
	            	if(metadata.getColumnlength() == null || metadata.getColumnlength() == 0){
	                	sqlCreate.append("(512)");
	            	}else{
	                	sqlCreate.append("(").append(metadata.getColumnlength()).append(")");
	            	}
	            }else if(metadata.getColumntype()==3){//下拉单选
	            	sqlCreate.append("(10)");
	            }else if(metadata.getColumntype()==4||metadata.getColumntype()==8){//下拉多选，文件上传
	            	sqlCreate.append("(512)");
	            }else if(metadata.getColumntype()==17){//整数
	            	if(metadata.getColumnlength() == null || metadata.getColumnlength() == 0){
	                	sqlCreate.append("(10)");
	            	}else{
	                	sqlCreate.append("(").append(metadata.getColumnlength()).append(")");
	            	}
	            }else if(metadata.getColumntype()==18){//小数
	            	if(metadata.getColumnlength() == null || metadata.getColumnlength() == 0){
	                	sqlCreate.append("(10,2)");
	            	}else{
	                	sqlCreate.append("(").append(metadata.getColumnlength()).append(",2)");
	            	}
	            }
	            if (!StringUtils.isEmpty(metadata.getDefaultvalue())){
	            	sqlCreate.append(" DEFAULT ").append(metadata.getDefaultvalue());
	            }
	            sqlCreate.append(" COMMENT '").append(metadata.getColumncname()).append("',");
	        }
	        sqlCreate.deleteCharAt(sqlCreate.length() - 1);
	        sqlCreate.append(") DEFAULT CHARACTER SET=utf8 COMMENT='").append(tablecname).append("'");
	        return sqlCreate.toString();
	}

	public ActionResult updateStatus(DbDatalibrarys datalibrarys) {
		int count = datalibrarysMapper.updateByPrimaryKeySelective(datalibrarys);
		if (count > 0) {
			return ActionResult.ok();
		}
		return ActionResult.build(400, "操作失败！");
	}

	public ActionResult getSelfDataList(DataLibrarysManageSearchBean dataLibrarysManageSearchBean,
			List<CustomQueryBean> queryList) {
		if(dataLibrarysManageSearchBean.getLength()==null){
			dataLibrarysManageSearchBean.setLength(10);
		}
		if(dataLibrarysManageSearchBean.getStart()==null){
			dataLibrarysManageSearchBean.setStart(0);
		}
		ListInfo listInfo = new ListInfo();
		Boolean flag = false;
		String usersql = "";
		// 获取db基本信息
		List<DatalibrarysCustomBean> dbList = datalibrarysCustomMapper.selectByExample(dataLibrarysManageSearchBean);
		if (dbList != null && dbList.size() == 1) {
			DatalibrarysCustomBean db = dbList.get(0);
			// 获取资源库元数据
			List<MetadatasCustomBean> metaList = metadatasCustomMapper.selectByExample(db.getMouldid().toString());
			if (metaList == null) {
				metaList = new ArrayList<MetadatasCustomBean>();
			}
			List<MetadatasCustomBean> sysMetaList = Constants.initSysMetaList();
			for (int i = 0; i < sysMetaList.size(); i++) {
				MetadatasCustomBean meta = sysMetaList.get(i);
				if (meta.getMetaType().equals("sys")) {
					metaList.add(meta);
				}
				if (meta.getMetaType().equals("ware") && db.getIsware() == 1) {
					metaList.add(meta);
				}
				if (meta.getMetaType().equals("base")) {
					metaList.add(meta);
				}
			}

			StringBuffer whereSql = new StringBuffer(" where 1 = 1 ");
			if (dataLibrarysManageSearchBean.getUserId() > 0) {
				whereSql.append(" and creatorid=").append(dataLibrarysManageSearchBean.getUserId());
			}

			List<MetadatasCustomBean> rMetaList = new ArrayList<MetadatasCustomBean>();
			String[] queryValues;
			String showCol = "";
			for (MetadatasCustomBean metadatasCustomBean : metaList) {
				if (metadatasCustomBean.getSearchshow() == 1) {
					queryValues = listToArr(metadatasCustomBean.getColumnname(), queryList);

					if (queryValues != null && queryValues.length > 0) {
						switch (metadatasCustomBean.getColumntype()) {
						case Constants.COLUMNTYPE_RADIO:
							if (metadatasCustomBean.getColumnname().equals("ClassID")) {
								whereSql.append(" and ( ");
								boolean b = false;
								String[] queryarray = queryValues[0].split(",");
								for (String clsid : queryarray) {
									if (b) {
										whereSql.append(" or ");
									}
									whereSql.append(metadatasCustomBean.getColumnname()).append(" like '%")
											.append(clsid).append("%' ");
									b = true;
								}
								whereSql.append(" ) ");
								break;
							}
							if (queryValues[0].length() > 10) {
								if (StringUtils.isNotBlank(queryValues[0])) {
									whereSql.append(" and ").append(metadatasCustomBean.getColumnname()).append(" = ")
											.append(queryValues[0]);
								} else if ("activityType".equals(metadatasCustomBean.getColumnname())) {
									whereSql.append(" and ").append(metadatasCustomBean.getColumnname()).append(" = ")
											.append(queryValues[0]);
								}
								break;
							} else {
								if (StringUtils.isNotBlank(queryValues[0])) {
									whereSql.append(" and ").append(metadatasCustomBean.getColumnname()).append(" = '")
											.append(queryValues[0]).append("'");
								} else if ("activityType".equals(metadatasCustomBean.getColumnname())) {
									whereSql.append(" and ").append(metadatasCustomBean.getColumnname()).append(" = ")
											.append(queryValues[0]);
								}
								break;
							}
						case Constants.COLUMNTYPE_CHECKBOX:
							String xmlStr = "";
							for (String str : queryValues) {
								if (!str.equals("-1")) {
									xmlStr += "<values><value>" + str + "</value></values>";
								}
							}
							if (!xmlStr.equals("")) {
								xmlStr = "<root>" + xmlStr + "</root>";
							}
							break;
						case Constants.COLUMNTYPE_DATE:
						case Constants.COLUMNTYPE_DATATIME:
							if (queryValues.length > 1) {
								if (!StringUtils.isEmpty(queryValues[0]) && !StringUtils.isEmpty(queryValues[1])) {
									whereSql.append(" and ").append(metadatasCustomBean.getColumnname())
											.append(" between '").append(queryValues[0]).append("' and '")
											.append(queryValues[1]).append("' ");
								}
							} else if (queryValues.length == 1) {
								if (queryValues[0].split(",").length > 1) {
									if (!StringUtils.isEmpty(queryValues[0].split(",")[0])
											&& !StringUtils.isEmpty(queryValues[0].split(",")[1])) {
										whereSql.append(" and ").append(metadatasCustomBean.getColumnname())
												.append(" between '").append(queryValues[0].split(",")[0] + " 00:00:00")
												.append("' and '").append(queryValues[0].split(",")[1] + " 23:59:59")
												.append("' ");
									}
								}
							}
							break;
						case Constants.COLUMNTYPE_INT:
							if (queryValues.length > 1) {
								if (!StringUtils.isEmpty(queryValues[0]) && !StringUtils.isEmpty(queryValues[1])) {
									whereSql.append(" and ").append(metadatasCustomBean.getColumnname())
											.append(" between '").append(queryValues[0]).append("' and '")
											.append(queryValues[1]).append("' ");
								}
							} else if (queryValues.length == 1) {
								if (queryValues[0].split(",").length > 1) {
									if (!StringUtils.isEmpty(queryValues[0].split(",")[0])
											&& !StringUtils.isEmpty(queryValues[0].split(",")[1])) {
										whereSql.append(" and ").append(metadatasCustomBean.getColumnname())
												.append(" between '").append(queryValues[0].split(",")[0])
												.append("' and '").append(queryValues[0].split(",")[1]).append("' ");
									}
								}
							}
							break;
						case Constants.COLUMNTYPE_DECIMAL:
							if (queryValues.length > 1) {
								if (!StringUtils.isEmpty(queryValues[0]) && !StringUtils.isEmpty(queryValues[1])) {
									whereSql.append(" and ").append(metadatasCustomBean.getColumnname()).append(" >= ")
											.append(queryValues[0]).append(" and ")
											.append(metadatasCustomBean.getColumnname()).append(" <= ")
											.append(queryValues[1]);
								}
							} else if (queryValues.length == 1) {
								if (queryValues[0].split(",").length > 1) {
									if (!StringUtils.isEmpty(queryValues[0].split(",")[0])
											&& !StringUtils.isEmpty(queryValues[0].split(",")[1])) {
										whereSql.append(" and ").append(metadatasCustomBean.getColumnname())
												.append(" >= ").append(queryValues[0].split(",")[0]).append(" and ")
												.append(metadatasCustomBean.getColumnname()).append(" <= ")
												.append(queryValues[0].split(",")[1]);
									}
								}
							}
							break;
						default:
							if (metadatasCustomBean.getColumnsource() != null
									&& metadatasCustomBean.getColumnsource() == 4) {
								if (queryValues != null) {
									usersql = "(SELECT * from front_user_info where name like '%"
											+ queryValues[0].trim() + "%' or phone like '%" + queryValues[0].trim()
											+ "%') u";
									flag = true;
								}
							} else {
								whereSql.append(" and ")
										.append("TRIM(replace(" + metadatasCustomBean.getColumnname() + ",' ',''))")
										.append(" like '%").append(queryValues[0].trim().replaceAll(" ", ""))
										.append("%'");
							}
							break;
						}
					}
				}
				if (metadatasCustomBean.getGridshow() == 1) {
					if (flag) {
						showCol += "o." + metadatasCustomBean.getColumnname() + ",";
					} else {
						showCol += metadatasCustomBean.getColumnname() + ",";
					}
					if (metadatasCustomBean.getColumntype() == Constants.COLUMNTYPE_RADIO
							|| metadatasCustomBean.getColumntype() == Constants.COLUMNTYPE_CHECKBOX) {
						rMetaList.add(metadatasCustomBean);
					}
				}
			}

			showCol = showCol.substring(0, showCol.length() - 1);
			/*
			 * if(queryList != null){ for (CustomQueryBean query : queryList) {
			 * if(query.getName().equals("status")){ //仅查询没有被删除的数据
			 * whereSql.append(" and status=1"); } } }
			 */

			String sqlCount = "select count(1) from " + db.getDatabasename() + " " + whereSql.toString();
			int count = datalibrarysCustomMapper.getResCount(sqlCount);
			String sqlList = "";
			if (count > 0) {

				StringBuffer ordersql = new StringBuffer(" ");
				List<Order> orderlist = dataLibrarysManageSearchBean.getOrder();
				if (null != orderlist && orderlist.size() > 0) {
					ordersql.append(" order by ");
					for (Order order : orderlist) {
						if (!StringUtils.isEmpty(order.getColumn())) {
							ordersql.append(order.getColumn());
							ordersql.append(" ").append(order.getDir()).append(" ").append(",");
						}
					}
				}

				if (String.valueOf(ordersql).contains(",")) {
					ordersql = ordersql.deleteCharAt(ordersql.length() - 1);
				} else {
					ordersql = new StringBuffer(" ");
				}

				if (showCol.contains("creatorid") && !showCol.toLowerCase().contains("UserID".toLowerCase())
						&& !showCol.toLowerCase().contains("RealName".toLowerCase())) {
					showCol = showCol.replaceAll("creatorid,", "");
					showCol += ",u.RealName as creatorid ";
					sqlList = "select " + showCol + " from " + db.getDatabasename()
							+ " db LEFT JOIN (select UserID,RealName from base_managers) u on db.creatorid = u.UserID "
							+ whereSql.toString() + " " + ordersql.toString() + " limit "
							+ dataLibrarysManageSearchBean.getStart() + "," + dataLibrarysManageSearchBean.getLength();
				} else {
					if (flag) {
						sqlList = "select * " + " from " + db.getDatabasename() + whereSql.toString() + " "
								+ ordersql.toString();
						sqlCount = "select count(1) from " + usersql + " INNER JOIN (" + "select * " + " from "
								+ db.getDatabasename() + whereSql.toString() + ") o ON o.userID = u.seqid";
						sqlList = "select " + showCol + " from " + usersql + " INNER JOIN" + " (" + sqlList
								+ ") o ON o.userID = u.seqid" + " limit " + dataLibrarysManageSearchBean.getStart()
								+ "," + dataLibrarysManageSearchBean.getLength();
						count = datalibrarysCustomMapper.getResCount(sqlCount);
					} else {
						sqlList = "select * " + " from " + db.getDatabasename() + whereSql.toString() + " "
								+ ordersql.toString() + " limit " + dataLibrarysManageSearchBean.getStart() + ","
								+ dataLibrarysManageSearchBean.getLength();

					}
				}
				List<LinkedHashMap<String, Object>> resList = datalibrarysCustomMapper.getResList(sqlList);

				List<LinkedHashMap<String, Object>> resultList = new ArrayList<LinkedHashMap<String, Object>>();

				if (rMetaList != null && rMetaList.size() > 0) {
					Map<String, List<?>> list = new HashMap<String, List<?>>();
					for (MetadatasCustomBean metaCustom : rMetaList) {
						switch (metaCustom.getColumnsource()) {
						case Constants.COlUMNSOURCE_DIC:
							BaseDicsExample dicExample = new BaseDicsExample();
							dicExample.createCriteria().andDictypeEqualTo(metaCustom.getColumntyperule())
									.andIsdictypeEqualTo(0);
							;
							List<BaseDics> dic = dicsMapper.selectByExample(dicExample);
							list.put(metaCustom.getColumnname(), dic);
							break;
						case Constants.COlUMNSOURCE_CLASS:
							BaseClassesExample classExample = new BaseClassesExample();
							String typeRule = metaCustom.getColumntyperule();
							if (!StringUtils.isEmpty(typeRule)) {
								classExample.createCriteria().andClassidEqualTo(Integer.valueOf(typeRule));
							}
							List<ClassesCustomBean> classes = classesCustomMapper.selectByExample(classExample);
							list.put(metaCustom.getColumnname(), classes);
							break;
						case Constants.COlUMNSOURCE_DB:
							DbLibrarynexusExample nexusExample = new DbLibrarynexusExample();
							nexusExample.createCriteria().andMdbfieldEqualTo(metaCustom.getColumnname())
									.andMdbnameEqualTo(dataLibrarysManageSearchBean.getDatabaseName());
							List<DbLibrarynexus> nexusList = librarynexusMapper.selectByExample(nexusExample);
							List<List<LinkedHashMap<String, Object>>>nexusResList = new ArrayList<List<LinkedHashMap<String, Object>>>();
							if (nexusList != null) {
								for (DbLibrarynexus dbLibraryNexus : nexusList) {
									if (dbLibraryNexus != null) {
										List<LinkedHashMap<String, Object>> nexusSqlList = datalibrarysCustomMapper
												.getResList(dbLibraryNexus.getSdbsql());
										if (nexusSqlList != null && nexusSqlList.size() > 0) {
											nexusResList.add(nexusSqlList);
										}
									}
								}
							}

							list.put(metaCustom.getColumnname(), nexusResList);
							break;
						}
						for (int i = 0; i < resList.size(); i++) {
							Map<String, Object> resMap =  resList.get(i);
							resMap.put(metaCustom.getColumnname() + "Name", null);
						}
					}
					for (LinkedHashMap<String, Object> object : resList) {
						for (MetadatasCustomBean metaCustomBean : rMetaList) {
							if (list == null || list.size() == 0) {
								continue;
							}
							if (!list.containsKey(metaCustomBean.getColumnname())) {
								continue;
							}
							Object value = object.get(metaCustomBean.getColumnname());
							if (value == null || value.toString().isEmpty()) {
								continue;
							}
							List<?> obj = list.get(metaCustomBean.getColumnname());
							String str = "";
							String valueStr = value.toString();
							for (Object v : obj) {
								if (v.getClass().equals(BaseDics.class)) {
									BaseDics dic = (BaseDics) v;
									if (valueStr.equals(dic.getDicvalue())) {
										str += dic.getDicname() + ",";
									}
								} else if (v.getClass().equals(ClassesCustomBean.class)) {
									ClassesCustomBean cls = (ClassesCustomBean) v;
									if (valueStr.contains(",")) {// 多个分类
										String emparry[] = valueStr.split(",");
										for (String string : emparry) {
											if (string.equals(cls.getClassid().toString())) {
												str += cls.getClassname() + ",";
												break;
											}
										}
									} else {
										if (valueStr.equals(cls.getClassid().toString())) {
											str += cls.getClassname() + ",";
										}
									}

								} else {
									if (v != null) {
										List<LinkedHashMap<String, Object>> nexusL = (List) v;
										if (nexusL != null && nexusL.size() > 0) {
											for (LinkedHashMap<String, Object> nexusMap : nexusL) {
												if (nexusMap != null && nexusMap.size() > 1) {
													Collection<Object> mapValue = nexusMap.values();
													Object[] mapValueArr = mapValue.toArray();
													if (valueStr.contains(",")) {
														String[] tpmarray = valueStr.split(",");
														for (String tmpstr : tpmarray) {
															if (tmpstr.equals(mapValueArr[0].toString())) {
																str += mapValueArr[1] + ",";
															}
														}
													} else {
														if (valueStr.equals(mapValueArr[0].toString())) {
															str += mapValueArr[1] + ",";
														}
													}
												}
											}
										}
									}
								}
							}
							if (str.length() > 1) {
								str = str.substring(0, str.length() - 1);
							}
							object.put(metaCustomBean.getColumnname() + "Name", str);
						}
						resultList.add(object);
					}
				}

				listInfo.setLength(count);
				listInfo.setList(resultList);
			}
		}
		return ActionResult.ok(listInfo);
	}

	public static String[] listToArr(String name, List<CustomQueryBean> queryList) {
		if (queryList == null || queryList.size() == 0) {
			return null;
		}
		List<CustomQueryBean> squery = new ArrayList<CustomQueryBean>();
		for (CustomQueryBean customQueryBean : queryList) {
			if (customQueryBean.getName().equals(name) && !StringUtils.isEmpty(customQueryBean.getNameValue())) {
				squery.add(customQueryBean);
			}
		}

		if (squery != null && squery.size() > 0) {
			String[] arr = new String[squery.size()];
			int i = 0;
			for (CustomQueryBean q : squery) {
				arr[i++] = q.getNameValue();
			}
			return arr;
		} else {
			return null;
		}
	}

	public ActionResult updateEditableField(Integer seqid, String field, String value, String databasename,String mouldId, HttpServletRequest request) {
		String sql = "update " + databasename + " set " + field + "='" + value + "' where seqid=" + seqid;
		int count = datalibrarysCustomMapper.editRes(sql);
		if (count > 0) {
			BaseManagers loginUser = (BaseManagers) request.getSession().getAttribute("USER_VALUE_OBJECT");
			BaseMenusExample example=new BaseMenusExample();
			example.createCriteria().andPathLike("%mouldId="+mouldId);
			List<BaseMenus> menus = menusMapper.selectByExample(example);
			BaseLogs logs=new BaseLogs();
			logs.setCreatetime(new Date());
			logs.setLogdetail("修改了"+menus.get(0).getMenuname()+"编号为"+seqid+"的数据");
			logs.setCreator(loginUser.getUserid());
			logs.setLogtype(Integer.valueOf(LogType.OPERATION_2));
			logsMapper.insert(logs);
			return ActionResult.ok();
		}
		return ActionResult.build(400, "操作失败!");
	}

	@Override
	public ActionResult getSelfDbInfo(Integer seqId, String databaseName) {
		StringBuffer sql = new StringBuffer("select * from ");
		sql.append(databaseName).append(" where seqid=").append(seqId);
		return ActionResult.ok(datalibrarysCustomMapper.getResList(sql.toString()));
	}

	@Override
	public ActionResult addRes(DataLibrarysManageSearchBean searchBean, QueryList queryList,
			HttpServletRequest request) throws Exception {
		List<CustomQueryBean> beanlist = queryList.getQueryList();
		CustomQueryBean user = new CustomQueryBean();
		user.setName("creatorid");
		BaseManagers loginUser = (BaseManagers) request.getSession().getAttribute("USER_VALUE_OBJECT");
		user.setNameValue(loginUser.getUserid().toString());
		beanlist.add(user);
		CustomQueryBean status = new CustomQueryBean();
		status.setName("status");
		status.setNameValue("1");
		beanlist.add(status);
		StringBuffer nameSql = new StringBuffer();
		StringBuffer valueSql = new StringBuffer();
		for (CustomQueryBean customQueryBean : beanlist) {
			if (customQueryBean != null && (customQueryBean.getName() != null)) {
				if(StringUtils.isNotEmpty(customQueryBean.getNameValue())){
					nameSql.append(customQueryBean.getName()).append(",");
					valueSql.append("'").append(customQueryBean.getNameValue()).append("',");
				}else{
					nameSql.append(customQueryBean.getName()).append(",");
					valueSql.append("NULL,");
				}
			}
		}
		String nameSqlStr = nameSql.substring(0, nameSql.length() - 1).toString();
		String valueSqlStr = valueSql.substring(0, valueSql.length() - 1).toString();
		String sql = "insert into " + searchBean.getDatabaseName() + " (" + nameSqlStr + ") values(" + valueSqlStr+ ")";
		int count = datalibrarysCustomMapper.alterTable(sql);
		if(count>0){
			String mouldId = searchBean.getMouldId();
			BaseMenusExample example=new BaseMenusExample();
			example.createCriteria().andPathLike("%mouldId="+mouldId);
			List<BaseMenus> menus = menusMapper.selectByExample(example);
			BaseLogs logs=new BaseLogs();
			logs.setCreatetime(new Date());
			logs.setLogdetail("新增了"+menus.get(0).getMenuname()+"1条数据");
			logs.setCreator(loginUser.getUserid());
			logs.setLogtype(Integer.valueOf(LogType.OPERATION_2));
			logsMapper.insert(logs);
			return ActionResult.ok();
		}
		return ActionResult.build(400, "操作失败！");
	}

	@Override
	public ActionResult updateRes(DataLibrarysManageSearchBean searchBean, QueryList queryList,
			HttpServletRequest request) throws Exception {
		StringBuffer nameSql = new StringBuffer(); 
		List<CustomQueryBean> beanlist = queryList.getQueryList();
		CustomQueryBean user = new CustomQueryBean();
		user.setName("creatorid");
		BaseManagers loginUser = (BaseManagers) request.getSession().getAttribute("USER_VALUE_OBJECT");
		user.setNameValue(loginUser.getUserid().toString());
		beanlist.add(user);
		String databaseName = searchBean.getDatabaseName();
		for (CustomQueryBean customQueryBean : beanlist) {
			if(customQueryBean != null && (customQueryBean.getName() != null)){
				if(StringUtils.isNotEmpty(customQueryBean.getNameValue())){
					nameSql.append(customQueryBean.getName()).append("='").append(customQueryBean.getNameValue()).append("',");
				}else{
					nameSql.append(customQueryBean.getName()).append("=NULL,");
				}
			}
		}
		String nameSqlStr = nameSql.substring(0, nameSql.length() - 1).toString();
		String sql = "update " + databaseName + " set " + nameSqlStr + " where seqid=" + searchBean.getSeqId();
		int count = datalibrarysCustomMapper.alterTable(sql);
		if(count>0){
			String mouldId = searchBean.getMouldId();
			BaseMenusExample example=new BaseMenusExample();
			example.createCriteria().andPathLike("%mouldId="+mouldId);
			List<BaseMenus> menus = menusMapper.selectByExample(example);
			BaseLogs logs=new BaseLogs();
			logs.setCreatetime(new Date());
			logs.setLogdetail("修改了"+menus.get(0).getMenuname()+"1条数据");
			logs.setCreator(loginUser.getUserid());
			logs.setLogtype(Integer.valueOf(LogType.OPERATION_3));
			logsMapper.insert(logs);
			return ActionResult.ok();
		}
		return ActionResult.build(400, "操作失败！");
	}

	@Override
	public ActionResult delResBatch(DataLibrarysManageSearchBean searchBean,HttpServletRequest request) {
		String resIds = searchBean.getResIds();
		String databaseName = searchBean.getDatabaseName();
		String mouldId = searchBean.getMouldId();
		String status = searchBean.getStatus();
		List<String> resIdList = Arrays.asList(resIds.split(","));
		StringBuffer delSql = new StringBuffer("update "); 
		delSql.append(databaseName).append(" set status = ").append(status).append(" where seqid in(");
		for (String resId : resIdList) {
			if(!StringUtils.isEmpty(resId)){
				delSql.append(resId).append(",");
			}
		}
		delSql.append(0).append(")");
		int count = datalibrarysCustomMapper.alterTable(delSql.toString());
		if(count>0){
			BaseManagers loginUser = (BaseManagers) request.getSession().getAttribute("USER_VALUE_OBJECT");
			BaseMenusExample example=new BaseMenusExample();
			example.createCriteria().andPathLike("%mouldId="+mouldId);
			List<BaseMenus> menus = menusMapper.selectByExample(example);
			BaseLogs logs=new BaseLogs();
			logs.setCreatetime(new Date());
			logs.setLogdetail("删除了"+menus.get(0).getMenuname()+resIdList.size()+"条数据");
			logs.setCreator(loginUser.getUserid());
			logs.setLogtype(Integer.valueOf(LogType.OPERATION_4));
			logsMapper.insert(logs);
			return ActionResult.ok();
		}
		return ActionResult.build(400, "操作失败！");
	}

	@Override
	public ActionResult delBatch(String databaseIds) {
		String[] ids = databaseIds.split(",");
		for (String id : ids) {
			DbDatalibrarys datalibrarys = datalibrarysMapper.selectByPrimaryKey(Integer.valueOf(id));
			sqlCustomMapper.dropTable(datalibrarys.getDatabasename());
			int count = datalibrarysMapper.deleteByPrimaryKey(Integer.valueOf(id));
			if(count>0){
				return ActionResult.ok();
			}
		}
		return ActionResult.build(400, "操作失败！");
	}
}
