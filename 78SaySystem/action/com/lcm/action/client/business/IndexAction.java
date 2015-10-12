package com.lcm.action.client.business;

import org.apache.struts2.convention.annotation.ParentPackage;

import com.lcm.action.client.base.BaseAction;
import com.lcm.bean.business.IndexBean;

@ParentPackage("default")
public class IndexAction extends BaseAction<IndexBean> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1385694032750443562L;
	
	public IndexBean getModel() {
		if(entity == null) entity = new IndexBean();
		return entity;
	}
}
