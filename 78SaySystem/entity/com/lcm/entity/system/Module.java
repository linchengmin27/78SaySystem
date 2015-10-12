package com.lcm.entity.system;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="Module")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Module extends BaseEntity {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8503328442117410853L;
	private String name;
	private Boolean isOpen;
	private Module parent;
	private Integer sort;
	private String url;
	
	@Column(name="name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name="isOpen")
	public Boolean getIsOpen() {
		return isOpen;
	}
	public void setIsOpen(Boolean isOpen) {
		this.isOpen = isOpen;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="parentId")
	public Module getParent() {
		return parent;
	}
	public void setParent(Module parent) {
		this.parent = parent;
	}
	
	@Column(name="sort")
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUrl() {
		return url;
	}
}
