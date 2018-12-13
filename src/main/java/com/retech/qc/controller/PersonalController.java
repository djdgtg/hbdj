package com.retech.qc.controller;

import com.retech.qc.aspect.LogAnnotation;
import com.retech.qc.aspect.LogType;
import com.retech.qc.entity.custom.DataLibrarysManageSearchBean;
import com.retech.qc.entity.custom.QueryList;
import com.retech.qc.service.PersonalService;
import com.retech.qc.utils.ActionResult;
import com.retech.qc.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
@Controller
@RequestMapping("/personal")
public class PersonalController {

    @Autowired
    private PersonalService personalService;

    @RequestMapping("/uploadFile")
    @ResponseBody
    @LogAnnotation(logtype = LogType.OPERATION_7, logdetail = "文件上传")
    public ActionResult uploadFile(MultipartFile file) {
        return personalService.uploadFile(file);
    }

    @RequestMapping("/uploadkindeditor")
    @ResponseBody
    @LogAnnotation(logtype = LogType.OPERATION_7, logdetail = "富文本图片上传")
    public String uploadkindeditor(MultipartFile file) {
        HashMap<String, Object> result = personalService.uploadkindeditor(file);
        return JsonUtils.objectToJson(result);
    }

    @RequestMapping("/importFile")
    @ResponseBody
    @LogAnnotation(logtype = LogType.OPERATION_7, logdetail = "excel数据导入")
    public ActionResult importFile(MultipartFile file, DataLibrarysManageSearchBean searchBean, HttpServletRequest request) {
        return personalService.importFile(file, searchBean, request);
    }

    @RequestMapping("/updateResByFiledBatch")
    @ResponseBody
    public ActionResult updateResByFiledBatch(DataLibrarysManageSearchBean searchBean, String fieldval, String fieldname, HttpServletRequest request) {
        return personalService.updateResByFiledBatch(searchBean, fieldval, fieldname, request);
    }


    @RequestMapping("/checkunique")
    @ResponseBody
    public String checkunique(String columnname, Integer seqid, Integer index, QueryList queryList, String databasename) {
        String value = queryList.getQueryList().get(index).getNameValue();
        boolean result = personalService.checkunique(columnname, value, seqid, databasename);
        HashMap<String, Object> map = new HashMap<>();
        map.put("valid", !result);
        return JsonUtils.objectToJson(map);
    }

    @RequestMapping("/getfileServerUrl")
    @ResponseBody
    public String getfileServerUrl() {
        return personalService.getfileServerUrl();
    }
}
