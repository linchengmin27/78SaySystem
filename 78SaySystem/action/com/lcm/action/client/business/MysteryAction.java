package com.lcm.action.client.business;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.lcm.action.client.base.BaseAction;
import com.lcm.entity.business.Article;
import com.lcm.entity.business.Chapter;
import com.lcm.util.file.PageBean;
import com.lcm.util.file.StringUtil;

@ParentPackage("default")
public class MysteryAction extends BaseAction<Article> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8633583439591120047L;
	private static final String PATH = "/page/mystery/client";
	private Long categoryId;
	private Long chapterId;
	private Chapter chapter;
	 
	public Article getModel() {
		init();
		if(entity == null) entity = new Article();
		return entity;
	}
	
	@Action(value = "/mystery/index", results = {@Result(name = "success", location = PATH + "/index.jsp") })  
	public String index() {
		pageSize = 12;
		if(StringUtil.isEmpty(categoryId)) categoryId = 21L;
		entity.setCategory(articleService.getCategoryDetail(categoryId));
		long allRow = articleService.countArticle(categoryId);
		List<Article> list = articleService.getArticleList(categoryId, page, pageSize, " createTime desc");
		pageBean = new PageBean<Article>(list, allRow, page, pageSize);
		return SUCCESS;
	}
	
	@Action(value = "/mystery/detail", results = {@Result(name = "success", location = PATH + "/detail.jsp") })  
	public String detail() {
		entity = articleService.getArticleDetail(entity.getId());
		
		if(page <= 1) {
			chapter = articleService.getArticleChapter(entity.getId(), chapterId);
		} else {
			List<Chapter> chapters = articleService.getArticleChapterList(entity.getId(), page, 1);
			if(chapters.size() > 0) {
				chapter = chapters.get(0);
			} else {
				chapter = articleService.getArticleChapter(entity.getId(), chapterId);
			}
		}
		chapter.setContent(replaceContent(chapter.getContent()));
		
		List<Chapter> list = articleService.getArticleChapterList(entity.getId(), -1, 1);
		chapterPageBean = new PageBean<Chapter>(list, list.size(), page, 1);
		return SUCCESS;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setChapterId(Long chapterId) {
		this.chapterId = chapterId;
	}

	public Long getChapterId() {
		return chapterId;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}

	public Chapter getChapter() {
		return chapter;
	}
}
