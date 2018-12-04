package com.retech.qc.service.impl;

import com.retech.qc.entity.*;
import com.retech.qc.entity.custom.Options;
import com.retech.qc.entity.custom.OptionsSearchBean;
import com.retech.qc.mapper.BaseClassesMapper;
import com.retech.qc.mapper.BaseMenusMapper;
import com.retech.qc.mapper.BaseMgroleMapper;
import com.retech.qc.mapper.BaseRolemenuMapper;
import com.retech.qc.service.OptionsService;
import com.retech.qc.utils.ActionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OptionsServiceImpl implements OptionsService {

	@Autowired
	private BaseMenusMapper baseMenusMapper;

	@Autowired
	private BaseMgroleMapper baseMgroleMapper;

	@Autowired
	private BaseRolemenuMapper baseRolemenuMapper;

	@Autowired
	private BaseClassesMapper classesMapper;

	public ActionResult getMenuTreeOptionsByRole(OptionsSearchBean optionsSearchBean) {
		int roleId = optionsSearchBean.getRoleId();
		int userid = optionsSearchBean.getUserId();
		BaseMenusExample example = new BaseMenusExample();
		example.createCriteria().andMenuidIsNotNull();
		// 设置id不为空
		example.setOrderByClause("parentmenuid asc,sort asc");
		List<BaseMenus> menuslist = baseMenusMapper.selectByExample(example);
		List<Options> menuTreeList = new ArrayList<Options>();
		if (menuslist != null && menuslist.size() > 0) {
			List<Integer> menuidarr = new ArrayList<Integer>();
			if (roleId > 0 || userid > 0) {
				List<Integer> rolearr = null;
				if (roleId > 0) {
					rolearr = new ArrayList<Integer>();
					rolearr.add(roleId);
				} else {
					BaseMgroleExample mgRoleExample = new BaseMgroleExample();
					mgRoleExample.createCriteria().andUseridEqualTo(userid);
					List<BaseMgrole> mgrolelist = baseMgroleMapper.selectByExample(mgRoleExample);
					if (mgrolelist != null && mgrolelist.size() > 0) {
						rolearr = new ArrayList<Integer>(mgrolelist.size());
						int i = 0;
						for (BaseMgrole mgrole : mgrolelist) {
							rolearr.add(i, mgrole.getRoleid());
						}
					}
				}
				BaseRolemenuExample roleMenuExample = new BaseRolemenuExample();
				roleMenuExample.createCriteria().andRoleidIn(rolearr);
				List<BaseRolemenu> rolemenulist = baseRolemenuMapper.selectByExample(roleMenuExample);
				if (rolemenulist != null && rolemenulist.size() > 0) {
					for (BaseRolemenu rolemenu : rolemenulist)
						menuidarr.add(rolemenu.getMenuid());
				}
			}

			menuTreeList = setMenusChildren(0, menuslist, menuidarr);
		}

		return ActionResult.ok(menuTreeList);
	}

	private List<Options> setMenusChildren(int parentOption, List<BaseMenus> list, List<Integer> rolemenuarr) {
		List<Options> menusChildren = new ArrayList<Options>();
		Options option;
		for (BaseMenus menu : list) {
			Integer menuid = menu.getMenuid();// 获取菜单的id
			Integer parentid = menu.getParentmenuid();// 获取菜单的父id
			if (parentid == parentOption) {
				option = new Options();
				option.setId(menu.getMenuid());
				option.setText(menu.getMenuname());
				option.setSelected(rolemenuarr.contains(menuid));
				menusChildren.add(option);

				List<Options> iterateMenu = setMenusChildren(menuid, list, rolemenuarr);
				if (iterateMenu != null && iterateMenu.size() > 0) {
					option.setChildren(iterateMenu);
				}
			}
		}
		return menusChildren;
	}

	@Override
	public ActionResult getClassTreeOptionsByParent(OptionsSearchBean optionsSearchBean) {
		List<Options> clsTreeList = new ArrayList<Options>();
		int parentId = optionsSearchBean.getParentId();
		if (parentId < 0){
        	parentId = 0;
        }
		BaseClassesExample example = new BaseClassesExample();
		example.setOrderByClause("parentclassid asc");
		List<BaseClasses> classlist = classesMapper.selectByExample(example);
		if (classlist != null) {
			clsTreeList = setClsChildren(parentId, classlist);
		}
		if(optionsSearchBean.isWithNone()){
        	Options option = new Options();
        	option.setId(-1);
        	option.setText("--请选择--");
        	clsTreeList.add(0,option);
        }
		return ActionResult.ok(clsTreeList);
	}

	private List<Options> setClsChildren(int parentId, List<BaseClasses> list) {
		List<Options> clsChildren = new ArrayList<Options>();
		for (BaseClasses cls : list) {
			Integer clsid = cls.getClassid();// 获取分类的id
			Integer parentid = cls.getParentclassid();// 获取分类的父id
			if (parentid == parentId) {
				Options option = new Options();
				option.setId(clsid);
				option.setText(cls.getClassname());

				List<Options> iterateCls = setClsChildren(clsid, list);
				if (iterateCls != null && iterateCls.size() > 0) {
					option.setChildren(iterateCls);
				}
				clsChildren.add(option);
			}
		}
		return clsChildren;
	}

}
