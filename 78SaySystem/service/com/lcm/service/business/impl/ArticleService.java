package com.lcm.service.business.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.lcm.entity.base.BaseEntity;
import com.lcm.entity.base.EntityParamType;
import com.lcm.entity.business.Article;
import com.lcm.entity.business.Category;
import com.lcm.entity.business.Chapter;
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
	 * 根据ID获取指定的文章类型
	 **/
	public Category getCategoryDetail(Long id) {
		Category category = dao.getEntity(Category.class, id);
		if(category != null) {
			if(category.getIsDelete() == EntityParamType.IsDelete.NO) {
				return category;
			}
		}
		return null;
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
	
	/**
	 * 根据文章类型获取相关的文章个数
	 * */
	public long countArticle(Long categoryId) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "select count(*) from Article where isDelete=:isDelete and (category.id=:categoryId or category.parent.id=:categoryId)";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("categoryId", categoryId);
		
		return dao.getAllRow(hql, paramMap);
	}
	
	/**
	 * 根据文章类型获取相关的文章信息
	 * */
	public List<Article> getArticleList(Long categoryId, Integer page, 
			Integer pageSize, String orderBy) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Article where isDelete=:isDelete and (category.id=:categoryId or category.parent.id=:categoryId)";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("categoryId", categoryId);
		
		if(!StringUtil.isEmpty(orderBy)) {
			hql += " order by " + orderBy;
		}
		
		return dao.getEntities(hql, paramMap, page, pageSize);
	}
	
	/**
	 * 根据ID,获取指定的文章信息
	 * */
	public Article getArticleDetail(Long id) {
		Article article = dao.getEntity(Article.class, id);
		if(article != null) {
			if(article.getIsDelete() == EntityParamType.IsDelete.NO) {
				return article;
			}
		}
		return null;
	}
	
	/**
	 * 根据ID,获取指定的文章章节信息
	 * */
	public List<Chapter> getArticleChapterList(Long id, Integer page, Integer pageSize) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Chapter where isDelete=:isDelete and article.id=:articleId";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("articleId", id);
		
		hql += " order by sort asc";
		
		List<Chapter> list = dao.getEntities(hql, paramMap, page, pageSize);
		return list;
	}
	
	/**
	 * 根据ID,获取指定的文章章节信息
	 * */
	public Chapter getArticleChapter(Long id, Long chapterId) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Chapter where isDelete=:isDelete and article.id=:articleId";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("articleId", id);
		
		if(chapterId != null) {
			hql += " and id=:chapterId";
			paramMap.put("chapterId", chapterId);
		}
		
		hql += " order by sort asc";
		
		List<Chapter> list = dao.getEntities(hql, paramMap);
		return selectOne(list);
	}
}
