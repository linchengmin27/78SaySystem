package com.lcm.action.client.business;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.lcm.action.client.base.BaseAction;
import com.lcm.bean.business.IndexBean;

@ParentPackage("default")
public class IndexAction extends BaseAction<IndexBean> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1385694032750443562L;
	private static final String PATH = "/page/index";
	
	public IndexBean getModel() {
		init();
		if(entity == null) entity = new IndexBean();
		return entity;
	}
	
	@Action(value = "/index", results = {@Result(name = "success", location = PATH + "/index.jsp") })  
	public String index() {
		return SUCCESS;
	}

}
