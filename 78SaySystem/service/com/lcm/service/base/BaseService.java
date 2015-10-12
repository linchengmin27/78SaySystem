package com.lcm.service.base;

import org.springframework.beans.factory.annotation.Autowired;

import com.lcm.dao.base.Dao;

public abstract class BaseService {
	@Autowired
	protected Dao dao;
	
	/**
	 * 增加LIKE的查询值
	 * @param value
	 * @return
	 */
	protected String addLikeChar(String value){
		if(value==null||value.equals("")){
			return "";
		}
		return "%" + value + "%";
	}
}
