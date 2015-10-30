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
import com.lcm.entity.system.Tag;
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
		String hql = "from Article where isDelete=:isDelete";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		
		if(!StringUtil.isEmpty(categoryId)) {
			hql += " and (category.id=:categoryId or category.parent.id=:categoryId)";
			paramMap.put("categoryId", categoryId);
		}
		
		if(!StringUtil.isEmpty(orderBy)) {
			hql += " order by " + orderBy;
		}
		
		return dao.getEntities(hql, paramMap, page, pageSize);
	}
	
	/**
	 * 获取相关的文章
	 * */
	public List<Article> getArticleList(Article article) {
		String sql = "SELECT * FROM Article WHERE categoryId=? and id<>? order by rand() LIMIT 5";
		return dao.getEntities(Article.class, sql, new Object[]{article.getCategory().getId(), article.getId()});
	}
	
	/**
	 * 根据关键字获取相关的文章个数
	 * */
	public long countArticle(String key) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "select count(*) from Article where isDelete=:isDelete and (title like :key or tag like :key) order by createTime desc";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("key", addLikeChar(key));
		
		return dao.getAllRow(hql, paramMap);
	}
	
	/**
	 * 根据关键字获取文章信息
	 * */
	public List<Article> getArticleList(String key, Integer page, Integer pageSize) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Article where isDelete=:isDelete and (title like :key or tag like :key) order by createTime desc";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("key", addLikeChar(key));
		
		return dao.getEntities(hql, paramMap, page, pageSize);
	}
	
	/**
	 * 获取放置首页的文章信息
	 * */
	public List<Article> getIsPlacedHomeArticleList(Long categoryId) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Article where isDelete=:isDelete and isPlacedHome=:isPlacedHome and category.parent.id=:categoryId order by createTime desc";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("isPlacedHome", EntityParamType.IsPlacedHome.YES);
		paramMap.put("categoryId", categoryId);
		return dao.getEntities(hql, paramMap, 1, 4);
	}
	
	/**
	 * 获取头条的文章信息
	 * */
	public List<Article> getIsHeadlinesArticleList() {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Article where isDelete=:isDelete and isHeadlines=:isHeadlines order by createTime desc";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("isHeadlines", EntityParamType.IsHeadlines.YES);
		return dao.getEntities(hql, paramMap, 1, 3);
	}
	
	/**
	 * 获取特别推荐的文章信息
	 * */
	public List<Article> getiIsFeaturedArticleList() {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Article where isDelete=:isDelete and isFeatured=:isFeatured order by createTime desc";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("isFeatured", EntityParamType.IsFeatured.YES);
		return dao.getEntities(hql, paramMap, 1, 3);
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
	
	/**
	 * 获取标签列表
	 * */
	public List<Tag> getTagList() {
		String sql = "SELECT * FROM Tag order by rand() LIMIT 12";
		return dao.getEntities(Tag.class, sql, new Object[]{});
	}
	
	/**
	 * 更新指定的文件的浏览数
	 * */
	public void updateArticleViews(Long id) {
		Article article = getArticleDetail(id);
		article.setViews(article.getViews() + 1);
		dao.updateEntity(article);
	}
	
	/**
	 * 更新指定的文件的评论数
	 * */
	public void updateArticleReviews(Long id) {
		Article article = getArticleDetail(id);
		article.setReviews(article.getReviews() + 1);
		dao.updateEntity(article);
	}
}
