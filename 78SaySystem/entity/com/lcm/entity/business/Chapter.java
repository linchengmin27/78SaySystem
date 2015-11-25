package com.lcm.entity.business;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="Chapter")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Chapter extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7802519696357715288L;
	private String content;
	private Article article;
	private Integer sort;
	private String displayContent;
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="articleId")
	public Article getArticle() {
		return article;
	}
	
	public void setArticle(Article article) {
		this.article = article;
	}
	
	public Integer getSort() {
		return sort;
	}
	
	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public void setDisplayContent(String displayContent) {
		this.displayContent = displayContent;
	}

	@Transient
	public String getDisplayContent() {
		return displayContent;
	}
}
