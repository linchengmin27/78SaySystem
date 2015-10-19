package com.lcm.service.business;

import java.util.List;

import com.lcm.entity.business.Article;
import com.lcm.entity.business.Category;
import com.lcm.entity.business.Chapter;

public interface IArticleService {
	/**
	 * 获取所有的父级文章类型信息
	 * */
	public List<Category> getParentCategoryList();
	
	/**
	 * 根据ID获取指定的文章类型
	 **/
	public Category getCategoryDetail(Long id);
	
	/**
	 * 根据父级获取子级类别信息
	 * */
	public List<Category> getChilrenCategoryList(Long id);
	
	/**
	 * 根据文章类型获取相关的文章个数
	 * */
	public long countArticle(Long categoryId);
	
	/**
	 * 根据文章类型获取相关的文章信息
	 * */
	public List<Article> getArticleList(Long categoryId, Integer page, Integer pageSize, String orderBy);
	
	
	/**
	 * 根据ID,获取指定的文章信息
	 * */
	public Article getArticleDetail(Long id);
	
	/**
	 * 根据ID,获取指定的文章章节信息
	 * */
	public List<Chapter> getArticleChapterList(Long id, Integer page, Integer pageSize);
	
	/**
	 * 根据ID,获取指定的文章章节信息
	 * */
	public Chapter getArticleChapter(Long id, Long chapterId);
	
}
