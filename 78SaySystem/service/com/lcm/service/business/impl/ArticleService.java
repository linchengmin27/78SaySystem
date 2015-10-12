package com.lcm.service.business.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.lcm.entity.base.EntityParamType;
import com.lcm.entity.business.Category;
import com.lcm.service.base.BaseService;
import com.lcm.service.business.IArticleService;
import com.lcm.util.file.StringUtil;

@Service
public class ArticleService extends BaseService implements IArticleService {
	/**
	 * 获取所有的父级文章类型信息
	 * */
	public List<Category> getParentCategoryList() {
		return getCategoryList(null);
	}
	
	/**
	 * 根据父级获取子级类别信息
	 * */
	public List<Category> getChilrenCategoryList(Long id) {
		return getCategoryList(id);
	}
	
	private List<Category> getCategoryList(Long id) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Category where isDelete=:isDelete";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		if(StringUtil.isEmpty(id)) {
			hql += " and parent is null";
		} else {
			hql += " and parent.id=:categoryId";
		}
		hql += " order by sort asc";
		paramMap.put("categoryId", id);
		return dao.getEntities(hql, paramMap);
	}
}
