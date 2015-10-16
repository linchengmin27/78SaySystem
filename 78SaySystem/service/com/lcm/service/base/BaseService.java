package com.lcm.service.base;

import java.util.List;

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
	
	protected <T> T selectOne(List<T> list){
		if(list != null && list.size() > 0){
			return list.get(0);
		}else{
			return null;
		}
	}
}
