package com.lcm.entity.business;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="Article")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Article extends BaseEntity {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8468569693631263859L;
	private String title;
	private String abstract_;
	private String content;
	private String tag;
	private String logo;
	private String logo2;
	private Category category;
	private String source;
	private Integer views;
	private Integer reviews;
	private String editor;
	private Integer listType;
	private Boolean isHeadlines;
	private Boolean isPlacedHome;
	private Boolean isFeatured;
	private Boolean isPublish;
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Column(name="abstract")
	public String getAbstract_() {
		return abstract_;
	}
	
	public void setAbstract_(String abstract1) {
		abstract_ = abstract1;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getTag() {
		return tag;
	}
	
	public void setTag(String tag) {
		this.tag = tag;
	}
	
	public String getLogo() {
		return logo;
	}
	
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="categoryId")
	public Category getCategory() {
		return category;
	}
	
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public String getSource() {
		return source;
	}
	
	public void setSource(String source) {
		this.source = source;
	}
	
	public Integer getViews() {
		return views;
	}
	
	public void setViews(Integer views) {
		this.views = views;
	}
	
	public Integer getReviews() {
		return reviews;
	}
	
	public void setReviews(Integer reviews) {
		this.reviews = reviews;
	}
	
	public String getEditor() {
		return editor;
	}
	
	public void setEditor(String editor) {
		this.editor = editor;
	}
	
	public Boolean getIsHeadlines() {
		return isHeadlines;
	}
	
	public void setIsHeadlines(Boolean isHeadlines) {
		this.isHeadlines = isHeadlines;
	}
	
	public Boolean getIsPlacedHome() {
		return isPlacedHome;
	}
	
	public void setIsPlacedHome(Boolean isPlacedHome) {
		this.isPlacedHome = isPlacedHome;
	}
	
	public Boolean getIsFeatured() {
		return isFeatured;
	}
	
	public void setIsFeatured(Boolean isFeatured) {
		this.isFeatured = isFeatured;
	}

	public void setLogo2(String logo2) {
		this.logo2 = logo2;
	}

	public String getLogo2() {
		return logo2;
	}

	public void setIsPublish(Boolean isPublish) {
		this.isPublish = isPublish;
	}

	public Boolean getIsPublish() {
		return isPublish;
	}

	public void setListType(Integer listType) {
		this.listType = listType;
	}

	public Integer getListType() {
		return listType;
	}

}
