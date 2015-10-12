package com.lcm.entity.business;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="Category")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Category extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5506542750149962732L;
	private String name;
	private String shorthand;
	private String introduction;
	private Category parent;
	private String url;
	private Integer sort;
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name="name")
	public String getName() {
		return name;
	}
	
	public void setParent(Category parent) {
		this.parent = parent;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "parentId")
	public Category getParent() {
		return parent;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Column(name="introduction")
	public String getIntroduction() {
		return introduction;
	}

	public void setShorthand(String shorthand) {
		this.shorthand = shorthand;
	}

	public String getShorthand() {
		return shorthand;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUrl() {
		return url;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Integer getSort() {
		return sort;
	}
}
