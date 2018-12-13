package com.retech.qc.controller;

import com.retech.qc.aspect.LogAnnotation;
import com.retech.qc.aspect.LogType;
import com.retech.qc.entity.BaseRoles;
import com.retech.qc.service.RolesService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
@Controller
@RequestMapping("/roles")
public class RolesController {

    @Autowired
    private RolesService rolesService;

    @RequestMapping("/list")
    @ResponseBody
    @LogAnnotation(logtype = LogType.OPERATION_5, logdetail = "查询角色")
    public List<BaseRoles> list() {
        return rolesService.list();
    }

    @RequestMapping("/add")
    @ResponseBody
    @LogAnnotation(logtype = LogType.OPERATION_2, logdetail = "新增角色")
    public ActionResult add(BaseRoles baseRoles) {
        if (!rolesService.checkUniqueness(baseRoles)) {
            rolesService.add(baseRoles);
            return ActionResult.ok();
        } else {
            return ActionResult.build(400, "该角色已存在！");
        }
    }

    @RequestMapping("/update")
    @ResponseBody
    @LogAnnotation(logtype = LogType.OPERATION_3, logdetail = "更新角色")
    public ActionResult update(BaseRoles baseRoles) {
        if (!rolesService.checkUniqueness(baseRoles)) {
            rolesService.update(baseRoles);
            return ActionResult.ok();
        } else {
            return ActionResult.build(400, "该角色已存在！");
        }
    }

    @RequestMapping("/delBatch")
    @ResponseBody
    @LogAnnotation(logtype = LogType.OPERATION_2, logdetail = "删除角色")
    public ActionResult delBatch(String roleIds) {
        ActionResult result = rolesService.delBatch(roleIds);
        return result;
    }

}
