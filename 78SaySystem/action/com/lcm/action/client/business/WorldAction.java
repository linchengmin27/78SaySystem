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
public class WorldAction extends BaseAction<Article> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 701597977614851395L;
	private static final String PATH = "/page/world/client";
	private Long categoryId;
	private Long chapterId;
	private Chapter chapter;
	
	public Article getModel() {
		init();
		if(entity == null) entity = new Article();
		return entity;
	}

	@Action(value = "/world/index", results = {@Result(name = "success", location = PATH + "/index.jsp") })  
	public String index() {
		pageSize = 12;
		if(StringUtil.isEmpty(categoryId)) categoryId = 1L;
		long allRow = articleService.countArticle(categoryId);
		List<Article> list = articleService.getArticleList(categoryId, page, pageSize, null);
		pageBean = new PageBean<Article>(list, allRow, page, pageSize);
		return SUCCESS;
	}
	
	@Action(value = "/world/detail", results = {@Result(name = "success", location = PATH + "/detail.jsp") })  
	public String detail() {
		entity = articleService.getArticleDetail(entity.getId());
		chapter = articleService.getArticleChapter(entity.getId(), chapterId);
		return SUCCESS;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}

	public Chapter getChapter() {
		return chapter;
	}
	
}
