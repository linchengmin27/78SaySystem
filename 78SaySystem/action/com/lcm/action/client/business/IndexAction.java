package com.lcm.action.client.business;

import java.util.List;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import com.lcm.action.client.base.BaseAction;
import com.lcm.entity.business.Article;
import com.lcm.util.file.PageBean;

@ParentPackage("default")
public class IndexAction extends BaseAction<Article> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1385694032750443562L;
	private static final String PATH = "/page/index";
	private String key;
	
	public Article getModel() {
		init();
		if(entity == null) entity = new Article();
		return entity;
	}
	
	@Action(value = "/index", results = {@Result(name = "success", location = PATH + "/index.jsp") })  
	public String index() {
		setAttrToRequest("featuredArticles", articleService.getiIsFeaturedArticleList());
		setAttrToRequest("headlinesArticles", articleService.getIsHeadlinesArticleList());
		setAttrToRequest("lastestArticles", articleService.getArticleList(null, 1, 2, " createTime desc"));
		setAttrToRequest("category1Articles", articleService.getIsPlacedHomeArticleList(1L));
		setAttrToRequest("category14Articles", articleService.getIsPlacedHomeArticleList(14L));
		setAttrToRequest("category21Articles", articleService.getIsPlacedHomeArticleList(21L));
		setAttrToRequest("category29Articles", articleService.getIsPlacedHomeArticleList(29L));
		return SUCCESS;
	}

	@Action(value = "/search", results = {@Result(name = "success", location = PATH + "/search.jsp") })  
	public String search() {
		try {
			pageSize = 10;
			key = new String(key.getBytes("ISO-8859-1"),"UTF-8");
			long allRow = articleService.countArticle(key);
			List<Article> list = articleService.getArticleList(key, page, pageSize);
			pageBean = new PageBean<Article>(list, allRow, page, pageSize);
			setAttrToRequest("allRow", allRow);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getKey() {
		return key;
	}
}
