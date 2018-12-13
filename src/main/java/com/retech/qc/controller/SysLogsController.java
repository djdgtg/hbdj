package com.retech.qc.controller;

import com.retech.qc.aspect.LogAnnotation;
import com.retech.qc.aspect.LogType;
import com.retech.qc.entity.custom.CustomSearchBean;
import com.retech.qc.entity.custom.SysLogsManageSearchBean;
import com.retech.qc.service.SysLogsService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
@Controller
@RequestMapping("/syslogs")
public class SysLogsController {

    @Autowired
    private SysLogsService SysLogsService;

    @RequestMapping("/list")
    @ResponseBody
    @LogAnnotation(logtype = LogType.OPERATION_5, logdetail = "查询系统日志")
    public ActionResult list(SysLogsManageSearchBean sysLogsManageSearchBean, CustomSearchBean customSearchBean) {
        return SysLogsService.list(sysLogsManageSearchBean, customSearchBean);
    }
}
