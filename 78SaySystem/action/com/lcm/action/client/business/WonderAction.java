package com.lcm.action.client.business;

import java.util.List;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import com.lcm.action.client.base.BaseAction;
import com.lcm.entity.business.Article;
import com.lcm.entity.business.Chapter;
import com.lcm.util.file.PageBean;

@ParentPackage("default")
public class WonderAction extends BaseAction<Article>  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 279197773406768486L;
	private static final String PATH = "/page/wonder/client";
	private Chapter chapter;
	private Long chapterId;

	public Article getModel() {
		init();
		if(entity == null) entity = new Article();
		return entity;
	}
	
	@Action(value = "/wonder/news/index", results = {@Result(name = "success", location = PATH + "/news_index.jsp") })  
	public String newsIndex() {
		entity.setCategory(articleService.getCategoryDetail(30L));
		long allRow = articleService.countArticle(30L);
		List<Article> list = articleService.getArticleList(30L, page, pageSize, " createTime desc");
		pageBean = new PageBean<Article>(list, allRow, page, pageSize);
		setAttrToRequest("articleTags", articleService.getTagList());
		setAttrToRequest("reviewsArticles", articleService.getArticleList(31L, 1, 5, " reviews desc"));
		return SUCCESS;
	}
	
	@Action(value = "/wonder/picture/index", results = {@Result(name = "success", location = PATH + "/picture_index.jsp") })  
	public String pictureIndex() {
		entity.setCategory(articleService.getCategoryDetail(31L));
		long allRow = articleService.countArticle(30L);
		List<Article> list = articleService.getArticleList(31L, page, pageSize, " createTime desc");
		pageBean = new PageBean<Article>(list, allRow, page, pageSize);
		return SUCCESS;
	}
	
	@Action(value = "/worder/detail", results = {@Result(name = "success", location = PATH + "/detail.jsp") })  
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
		
		setAttrToRequest("relateArticles", articleService.getArticleList(entity));
		setAttrToRequest("articleTags", articleService.getTagList());
		articleService.updateArticleViews(entity.getId());
		return SUCCESS;
	}
	
	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}

	public Chapter getChapter() {
		return chapter;
	}

	public void setChapterId(Long chapterId) {
		this.chapterId = chapterId;
	}

	public Long getChapterId() {
		return chapterId;
	}
}
