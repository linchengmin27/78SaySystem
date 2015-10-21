package com.lcm.entity.business;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="Comment")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Comment extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9196960474260852097L;
	private String name;
	private String content;
	private String logo;
	private Article article;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getLogo() {
		return logo;
	}
	
	public void setLogo(String logo) {
		this.logo = logo;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="articleId")
	public Article getArticle() {
		return article;
	}
}
