package com.retech.qc.service.impl;

import com.retech.qc.aspect.LogType;
import com.retech.qc.entity.*;
import com.retech.qc.entity.custom.*;
import com.retech.qc.mapper.BaseDicsMapper;
import com.retech.qc.mapper.BaseLogsMapper;
import com.retech.qc.mapper.BaseMenusMapper;
import com.retech.qc.mapper.DbLibrarynexusMapper;
import com.retech.qc.mapper.custom.ClassesManageCustomMapper;
import com.retech.qc.mapper.custom.DatalibrarysManageCustomMapper;
import com.retech.qc.mapper.custom.MetadatasManageCustomMapper;
import com.retech.qc.service.PersonalService;
import com.retech.qc.utils.ActionResult;
import com.retech.qc.utils.ExcelUtil;
import com.retech.qc.utils.FastDFSClient;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Map.Entry;

@Service
public class PersonalServiceImpl implements PersonalService {
	
	@Value("${fileserver.url}")
	private String fileserverurl;

	@Autowired
	private FastDFSClient fastDFSClient;

	@Autowired
	private MetadatasManageCustomMapper metadatasCustomMapper;
	
	@Autowired
	private DatalibrarysManageCustomMapper datalibrarysCustomMapper;
	
	@Autowired
	private BaseDicsMapper dicsMapper;
	
	@Autowired
	private DbLibrarynexusMapper librarynexusMapper;
	
	@Autowired
	private ClassesManageCustomMapper classesCustomMapper;
	
	@Autowired
	private BaseLogsMapper logsMapper;
	
	@Autowired
	private BaseMenusMapper menusMapper;
	
	@Override
	public ActionResult uploadFile(MultipartFile file) {
		try {
			String url = fastDFSClient.uploadFile(file);
			return ActionResult.ok(url);
		} catch (Exception e) {
			return ActionResult.build(-1, "文件上传失败！");
		}
	}

	@Override
	public HashMap<String, Object> uploadkindeditor(MultipartFile file) {
		HashMap<String, Object>result=new HashMap<>();
		try {
			String url = fastDFSClient.uploadFile(file);
			result.put("error", 0);
			result.put("url", fileserverurl+url);
		} catch (Exception e) {
			result.put("error", 1);
			result.put("message","上传失败！");
		}
		return result;
	}
	
	@Override
	public ActionResult importFile(MultipartFile file, DataLibrarysManageSearchBean searchBean, HttpServletRequest request) {
		String filePath = request.getSession().getServletContext().getRealPath("/upload");
		String fileName = file.getOriginalFilename();
		String databaseName = searchBean.getDatabaseName();
		String mouldId = searchBean.getMouldId();
		BaseManagers loginUser = (BaseManagers) request.getSession().getAttribute("USER_VALUE_OBJECT");
		// 生成上传的文件对象
		File target = new File(filePath, fileName);
		if (target.exists()) {
			target.delete();
		}
		int savetotal = 0;
		int rows = 0;
		int nums=0;
		FileInputStream fis = null;
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(), target);
			CustomQueryBean creatoruser = new CustomQueryBean();
			creatoruser.setName("creatorid");
			creatoruser.setNameValue(loginUser.getUserid().toString());

			CustomQueryBean status = new CustomQueryBean();
			status.setName("status");
			status.setNameValue("1");

			fis = new FileInputStream(filePath + "\\" + fileName);
			XSSFWorkbook wookbook = new XSSFWorkbook(fis); // 创建对Excel工作簿文件的引用
			XSSFSheet sheet = wookbook.getSheetAt(0); // 在Excel文档中，第一张工作表的缺省索引是0
			rows = sheet.getPhysicalNumberOfRows(); // 获取到Excel文件中的所有行数­
			Map<Integer, String> keys = new HashMap<Integer, String>();
			int cells = 0;
			// 遍历行­（第1行 表头） 准备Map里的key
			XSSFRow firstRow = sheet.getRow(0);
			if (firstRow != null) {
				// 获取到Excel文件中的所有的列
				cells = firstRow.getPhysicalNumberOfCells();
				// 遍历列
				for (int j = 0; j < cells; j++) {
					// 获取到列的值­
					try {
						XSSFCell cell = firstRow.getCell(j);
						String cellValue = getCellValue(cell);
						if (cellValue != null && cellValue.split("###").length == 2) {
							cellValue = cellValue.split("###")[1];
						}
						keys.put(j, cellValue);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
			// 遍历行­（从第二行开始）
			for (int i = 1; i < rows; i++) {
				List<CustomQueryBean> returnlist = new ArrayList<>();
				// 保存用户信息
				returnlist.add(creatoruser);
				returnlist.add(status);
				// 读取左上端单元格(从第二行开始)
				XSSFRow row = sheet.getRow(i);
				// 行不为空
				if (row != null) {
					// 遍历列
					for (int j = 0; j < cells; j++) {
						CustomQueryBean bean = new CustomQueryBean();
						// 获取到列的值­
						try {
							XSSFCell cell = row.getCell(j);
							String cellValue = getCellValue(cell);
							if (cellValue != null && cellValue.trim().length() > 0) {
								bean.setName(keys.get(j));
								bean.setNameValue(cellValue);
								returnlist.add(bean);
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
					// 一行所有的列数据读取完毕
					// 入库
					boolean b = addExcelData(databaseName,mouldId, returnlist,loginUser);
					if (b) {
						savetotal++;
					}
				}
				if(returnlist.size()>2){
					nums++;
				}
			}
			// 所有的行读完

		} catch (Exception e) {
			e.printStackTrace();
		} 
		return ActionResult.ok("成功保存" + savetotal + "/" + nums + "条数据");
	}
	
	private static String getCellValue(XSSFCell cell) {
		DecimalFormat df = new DecimalFormat("#");
		String cellValue = null;
		if (cell == null)
			return null;
		switch (cell.getCellType()) {
		case XSSFCell.CELL_TYPE_NUMERIC:
			if (HSSFDateUtil.isCellDateFormatted(cell)) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				cellValue = sdf.format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue()));
				break;
			}
			cellValue = df.format(cell.getNumericCellValue());
			break;
		case XSSFCell.CELL_TYPE_STRING:
			cellValue = String.valueOf(cell.getStringCellValue());
			break;
		case XSSFCell.CELL_TYPE_FORMULA:
			cellValue = String.valueOf(cell.getCellFormula());
			break;
		case XSSFCell.CELL_TYPE_BLANK:
			cellValue = null;
			break;
		case XSSFCell.CELL_TYPE_BOOLEAN:
			cellValue = String.valueOf(cell.getBooleanCellValue());
			break;
		case XSSFCell.CELL_TYPE_ERROR:
			cellValue = String.valueOf(cell.getErrorCellValue());
			break;
		}
		if (cellValue != null && cellValue.trim().length() <= 0) {
			cellValue = null;
		}
		return cellValue;
	}

	
	private boolean addExcelData(String databaseName, String mouldId, List<CustomQueryBean> queryList, BaseManagers loginUser) {
		StringBuffer nameSql = new StringBuffer();
		StringBuffer valueSql = new StringBuffer();
		List<MetadatasCustomBean> list = metadatasCustomMapper.selectByExample(mouldId);
		if(queryList.size()>2){
			for (CustomQueryBean customQueryBean : queryList) {
				String namevalue=customQueryBean.getNameValue();
				if (customQueryBean != null && (customQueryBean.getName() != null)
						&& !customQueryBean.getName().equals("undefined") && customQueryBean.getNameValue() != null
						&& !customQueryBean.getNameValue().equals("undefined")) {
					if(list!=null){
						for (MetadatasCustomBean metadatasCustomBean : list) {
							if(metadatasCustomBean.getColumnname().equals(customQueryBean.getName())){
								if(metadatasCustomBean.getColumntype().equals(3)||metadatasCustomBean.getColumntype().equals(4)){
									if(metadatasCustomBean.getColumnsource().equals(1)){
										String[] split = customQueryBean.getNameValue().split("-");
										namevalue=split[0];
									}
								}
							}
						}
					}
					nameSql.append(customQueryBean.getName()).append(",");
					valueSql.append("'").append(namevalue).append("',");
				}
			}
		}
		String nameSqlStr = nameSql.substring(0, nameSql.length() - 1).toString();
		String valueSqlStr = valueSql.substring(0, valueSql.length() - 1).toString();
		String sql = "insert into " + databaseName + " (" + nameSqlStr + ") values(" + valueSqlStr + ")";
		int inRes = datalibrarysCustomMapper.alterTable(sql);
		return inRes > 0;
	}

	@Override
	public void exportModelExcel(List<DbMetadatas> metadataList, HttpServletResponse response,
								 HttpServletRequest request, String databasecname, String type, String databaseName, String mouldId) {
		try {
			OutputStream ouputStream = response.getOutputStream();

			// 动态列获取
			String colNames = "";
			//下拉框数据
	        List<String[]> downData = new ArrayList<>();
	        List<Integer>downRows=new ArrayList<>();
	        List<Integer>datetimelist=new ArrayList<>();
			boolean b = false;
			for (int i = 0; i < metadataList.size(); i++) {
				if (b) {
					colNames += ",";
				}
				colNames += metadataList.get(i).getColumncname() + "###" + metadataList.get(i).getColumnname();
				b = true;
				if(metadataList.get(i).getColumntype()==3){//下拉单选
					if(metadataList.get(i).getColumnsource()==1){//字典表
						BaseDicsExample example=new BaseDicsExample();
						example.createCriteria().andDictypeEqualTo(metadataList.get(i).getColumntyperule()).andIsdictypeEqualTo(0);
						List<BaseDics> dics = dicsMapper.selectByExample(example);
						List<String>diclist=new ArrayList<>();
						for (BaseDics baseDics : dics) {
							diclist.add(baseDics.getDicvalue()+"-"+baseDics.getDicname());
						}
						String[] arr = new String[diclist.size()];
						downData.add(diclist.toArray(arr));
						downRows.add(i);
					}else if(metadataList.get(i).getColumnsource()==3){//资源表
						DbLibrarynexusExample example=new DbLibrarynexusExample();
						example.createCriteria().andMdbfieldEqualTo(metadataList.get(i).getColumnname()).andMdbnameEqualTo(databaseName);
						List<DbLibrarynexus> list = librarynexusMapper.selectByExample(example);
						String sdbsql = list.get(0).getSdbsql();	
						List<LinkedHashMap<String, Object>> maplist = datalibrarysCustomMapper.getResList(sdbsql);
						List<String>reslist=new ArrayList<>();
						List<Object>str=new ArrayList<>();
						for (LinkedHashMap<String, Object> linkedHashMap : maplist) {
							Set<Entry<String, Object>> set = linkedHashMap.entrySet();
							for (Entry<String, Object> entry : set) {
								str.add(entry.getValue());
							}
						}
						for (int j = 0; j < str.size()-1; j+=2) {
							reslist.add(str.get(j)+"-"+str.get(j+1));
						}
						String[] arr = new String[list.size()];
						downData.add(reslist.toArray(arr));
						downRows.add(i);
					}
				}else if(metadataList.get(i).getColumntype()==10||metadataList.get(i).getColumntype()==11){//日期时间
					datetimelist.add(i);
				}
			}
			// 处理列名字符串
			List<String> headColumnName = new ArrayList<String>();
			headColumnName = Arrays.asList(colNames.split(","));
			// 写数据到Excel文件
			XSSFWorkbook workbook = exportExcel(headColumnName, type, databaseName, mouldId,datetimelist,downData,downRows);
			String filename = databasecname + "导入模板.xlsx";
			if (("1").equals(type)) {
				filename = databasecname + "数据导出" + DateFormatUtils.format(new Date(), "yyyy-MM-dd") + ".xlsx";
			}
			String downloadFileName = "";
			String agent = (String) request.getHeader("USER-AGENT");
			if (agent != null && agent.toLowerCase().indexOf("firefox") > 0) {
				downloadFileName = "=?UTF-8?B?" + (new String(Base64.encodeBase64(filename.getBytes("UTF-8")))) + "?=";
			} else {
				downloadFileName = java.net.URLEncoder.encode(filename, "UTF-8");
			}

			response.setHeader("Content-Type", "application/vnd.ms-excel");
			response.setHeader("Content-Disposition", "attachment;filename=" + downloadFileName);
			response.setContentType("application/octet-stream");
			response.setCharacterEncoding("UTF-8");

			workbook.write(ouputStream);
			ouputStream.flush();
			ouputStream.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private XSSFWorkbook exportExcel(List<String> headColumnName, String type, String databaseName,String mouldId, List<Integer> datetimelist, List<String[]> downData,List<Integer> downRows) {

		// 写数据到Excel文件
		XSSFWorkbook workBook = new XSSFWorkbook();
		// 设置表头字体
		Font headfont = workBook.createFont();
		headfont.setFontName("黑体");
		headfont.setFontHeightInPoints((short) 9);// 字体大小
		headfont.setBoldweight(Font.BOLDWEIGHT_BOLD);// 加粗

		CellStyle headStyle = workBook.createCellStyle(); // 表头第一列的样式
		headStyle.setFillForegroundColor(HSSFColor.LIGHT_CORNFLOWER_BLUE.index); // 前景色设置
		headStyle.setFillPattern(CellStyle.SOLID_FOREGROUND); // 填充模式 设置
		headStyle.setFont(headfont);
		headStyle.setAlignment(CellStyle.ALIGN_CENTER);// 左右居中
		headStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);// 上下居中
		headStyle.setWrapText(true);
		headStyle.setBorderRight(CellStyle.BORDER_THIN);
		headStyle.setRightBorderColor(IndexedColors.BLACK.getIndex());
		headStyle.setBorderTop(CellStyle.BORDER_THIN);
		headStyle.setTopBorderColor(IndexedColors.BLACK.getIndex());
		// 表格正文样式，背景色,边框
		CellStyle style = workBook.createCellStyle();
		style.setFillForegroundColor(HSSFColor.LEMON_CHIFFON.index); // 前景色设置
		style.setFillPattern(CellStyle.SOLID_FOREGROUND); // 填充模式 设置
		style.setBorderBottom(CellStyle.BORDER_THIN); // 设置单元格的边框为粗体
		style.setBottomBorderColor(IndexedColors.BLACK.getIndex()); // 设置单元格的边框颜色
		style.setBorderRight(CellStyle.BORDER_THIN);
		style.setRightBorderColor(IndexedColors.BLACK.getIndex());
		style.setBorderTop(CellStyle.BORDER_THIN);
		style.setTopBorderColor(IndexedColors.BLACK.getIndex());

		Row row;
		Cell cell = null;
		XSSFSheet sheet = null;
		sheet =workBook.createSheet("资源数据");
		row = sheet.createRow(0);// 第一行，标题
		// 如果没有设置要下载的字段
		if (headColumnName.size() == 1 && StringUtils.isEmpty(headColumnName.get(0))) {
			cell = row.createCell(0);
			cell.setCellValue("没有要下载的数据！");
			return workBook;
		}
		// 设置第一行标题
		for (int i = 0; i < headColumnName.size(); i++) {
			cell = row.createCell(i);
			cell.setCellValue(headColumnName.get(i));
			cell.setCellStyle(headStyle);
			// 设置列宽
			sheet.setColumnWidth(i, 18 * 256);
		}
		if(!StringUtils.isEmpty(type) && type.equals("0")){//导出模板
			 ExcelUtil.getExcelTemplate(workBook,sheet,headColumnName, downData, downRows);
			 XSSFCellStyle datestyle = workBook.createCellStyle();
			 CreationHelper creationHelper = workBook.getCreationHelper();
			 datestyle.setDataFormat(creationHelper.createDataFormat().getFormat("yyyy-MM-dd hh:mm:ss")); 
			 // 创建行  
			 for (int i = 1; i < 100; i++) {
				 row = sheet.createRow(i); 
				 for (int j = 0; j < datetimelist.size(); j++) {//日期时间
					 cell = row.createCell(datetimelist.get(j));  
					 cell.setCellStyle(datestyle);
				 } 
			 }
		}else if (!StringUtils.isEmpty(type) && type.equals("1")) {// 如果是导出全部数据 设置正文内容
			DbMetadatasExample example=new DbMetadatasExample();
			example.createCriteria().andMouldidEqualTo(Integer.valueOf(mouldId));
			// 查出数据
			DataLibrarysManageSearchBean dataLibrarysManageSearchBean = new DataLibrarysManageSearchBean();
			dataLibrarysManageSearchBean.setDatabaseName(databaseName);
			dataLibrarysManageSearchBean.setMouldId(mouldId);
			ListInfo result = getSelfDataList(dataLibrarysManageSearchBean);
			
			List<Map<String, String>> listNew = result.getList();

			for (int i = 0, len = listNew.size(); i < len; i++) {// 循环创建数据行
				row = sheet.createRow(i + 1);
				for (int j = 0; j < headColumnName.size(); j++) {
					cell = row.createCell(j);
					String fieldName = "";
					if (null != headColumnName.get(j) && headColumnName.get(j).split("###").length > 1) {
						fieldName = headColumnName.get(j).split("###")[1];
					}
					String cellValue = String.valueOf(listNew.get(i).get(fieldName));
					if ("&nbsp;".equals(cellValue) || StringUtils.isEmpty(cellValue) || "null".equals(cellValue)) {
						cellValue = "";
					}
					if (cellValue.length() >= 32767) {
						cellValue = cellValue.substring(0, 32000) + "...";
					}
					cell.setCellValue(cellValue);
					cell.setCellStyle(style);
				}
			}
		}

		return workBook;
	}

	private ListInfo getSelfDataList(DataLibrarysManageSearchBean dataLibrarysManageSearchBean) {

		ListInfo listInfo = new ListInfo();
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

			StringBuffer whereSql = new StringBuffer(" where status != -1 ");
			if (dataLibrarysManageSearchBean.getUserId() > 0) {
				whereSql.append(" and creatorid=").append(dataLibrarysManageSearchBean.getUserId());
			}

			List<MetadatasCustomBean> rMetaList = new ArrayList<MetadatasCustomBean>();
			String showCol = "";
			for (MetadatasCustomBean metadatasCustomBean : metaList) {
				if (null != metadatasCustomBean.getImportandexportshow()
						&& metadatasCustomBean.getImportandexportshow() == 1) {
					if(metadatasCustomBean.getColumntype()==10){
						showCol +="DATE_FORMAT("+metadatasCustomBean.getColumnname()+",'%y-%m-%d %H:%i:%s')"+ metadatasCustomBean.getColumnname() + ",";
					}else{
						showCol += metadatasCustomBean.getColumnname() + ",";
					}
					if (metadatasCustomBean.getColumntype() == Constants.COLUMNTYPE_RADIO
							|| metadatasCustomBean.getColumntype() == Constants.COLUMNTYPE_CHECKBOX) {
						rMetaList.add(metadatasCustomBean);
					}
				}
			}

			showCol = showCol.substring(0, showCol.length() - 1);

			String sqlCount = "select count(1) from " + db.getDatabasename() + " " + whereSql.toString();
			int count = datalibrarysCustomMapper.getResCount(sqlCount);
			String sqlList = "";
			if (count > 0) {
				if (showCol.contains("creatorid")) {
					showCol = showCol.replaceAll("creatorid,", "");
					showCol += ",u.RealName as creatorid ";
					sqlList = "select " + showCol + " from " + db.getDatabasename()
							+ " db LEFT JOIN (select UserID,RealName from base_managers) u on db.creatorid = u.UserID "
							+ whereSql.toString() + " order by seqid desc ";
				} else {
					sqlList = "select " + showCol + " from " + db.getDatabasename() + whereSql.toString()
							+ " order by seqid desc ";
				}
				List<LinkedHashMap<String, Object>> resList = datalibrarysCustomMapper.getResList(sqlList);

				List<LinkedHashMap<String, Object>> resultList = new ArrayList<>();

				if (rMetaList != null && rMetaList.size() > 0) {
					Map<String, List<?>> list = new HashMap<String, List<?>>();
					for (MetadatasCustomBean metaCustom : rMetaList) {
						switch (metaCustom.getColumnsource()) {
						case Constants.COlUMNSOURCE_DIC:
							BaseDicsExample dicExample = new BaseDicsExample();
							dicExample.createCriteria().andDictypeEqualTo(metaCustom.getColumntyperule()).andIsdictypeEqualTo(0);
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

							nexusExample.createCriteria().andMdbfieldEqualTo(metaCustom.getColumnname()).
							andMdbnameEqualTo(dataLibrarysManageSearchBean.getDatabaseName());

							List<DbLibrarynexus> nexusList = librarynexusMapper.selectByExample(nexusExample);
							List<List<LinkedHashMap<String, Object>>> nexusResList = new ArrayList<>();
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
							LinkedHashMap<String, Object> resMap = (LinkedHashMap<String, Object>) resList.get(i);
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
							List<?> valueList = list.get(metaCustomBean.getColumnname());
							String str = "";
							String valueStr = value.toString();
							for (Object v : valueList) {
								if (v.getClass().equals(BaseDics.class)) {
									BaseDics dic = (BaseDics) v;
									if (valueStr.contains(dic.getDicvalue())) {
										str += dic.getDicname() + ",";
									}
								} else if (v.getClass().equals(ClassesCustomBean.class)) {
									ClassesCustomBean cls = (ClassesCustomBean) v;
									if (valueStr.contains(cls.getClassid().toString())) {
										str += cls.getClassname() + ",";
									}
								} else {
									if (v != null) {
										List<LinkedHashMap<String, Object>> nexusL = (List<LinkedHashMap<String, Object>>) v;
										if (nexusL != null && nexusL.size() > 0) {
											for (LinkedHashMap<String, Object> map : nexusL) {
												if (map != null && map.size() > 1) {
													Collection<Object> mapValue = map.values();
													Object[] mapValueArr = mapValue.toArray();
													if (valueStr.contains(mapValueArr[0].toString())) {
														str += mapValueArr[1] + ",";
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
							object.put(metaCustomBean.getColumnname(), str);
						}
						resultList.add(object);
					}
				} else {
					resultList = resList;
				}
				listInfo.setLength(count);
				listInfo.setList(resultList);
				return listInfo;
			}
		}

		return listInfo;
	}


	@Override
	public ActionResult updateResByFiledBatch(DataLibrarysManageSearchBean searchBean, String fieldval,
			String fieldname,HttpServletRequest request) {
		StringBuffer delSql = new StringBuffer("update "); 
		String resIds = searchBean.getResIds();
		if(StringUtils.isNoneEmpty(resIds)){
			delSql.append(searchBean.getDatabaseName()).append(" set ").append(fieldname).append(" = '").append(fieldval).append("' where seqid in(");
			delSql.append(resIds).append(")");
			int count = datalibrarysCustomMapper.alterTable(delSql.toString());
			if(count>0){
				BaseManagers loginUser = (BaseManagers) request.getSession().getAttribute("USER_VALUE_OBJECT");
				String mouldId = searchBean.getMouldId();
				BaseMenusExample example=new BaseMenusExample();
				example.createCriteria().andPathLike("%mouldId="+mouldId);
				List<BaseMenus> menus = menusMapper.selectByExample(example);
				BaseLogs logs = new BaseLogs();
				logs.setCreatetime(new Date());
				String logdetail="修改了"+menus.get(0).getMenuname()+count+"条数据状态";
				logs.setLogdetail(logdetail);
				logs.setCreator(Integer.valueOf(loginUser.getUserid()));
				logs.setLogtype(Integer.valueOf(LogType.OPERATION_3));
				logsMapper.insert(logs);
			}
		}
		return ActionResult.ok();
	}

	@Override
	public boolean checkunique(String columnname, String value, Integer seqid, String databasename) {
		StringBuffer sb=new StringBuffer();
		sb.append("select count(1) from ").append(databasename).append(" Where ").append(columnname)
		.append("='").append(value).append("'");
		if(seqid!=null){
			sb.append(" and ").append("seqid!= ").append(seqid);
		}
		return datalibrarysCustomMapper.checkunique(sb.toString())>0;
	}

	@Override
	public String getfileServerUrl() {
		return fileserverurl;
	}

	
}