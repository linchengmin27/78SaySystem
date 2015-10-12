package com.lcm.service.business;

import java.util.List;

import com.lcm.entity.business.Category;

public interface IArticleService {
	/**
	 * 获取所有的父级文章类型信息
	 * */
	public List<Category> getParentCategoryList();
	
	/**
	 * 根据父级获取子级类别信息
	 * */
	public List<Category> getChilrenCategoryList(Long id);
}
