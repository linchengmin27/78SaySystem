package com.lcm.entity.business;

import javax.persistence.Entity;
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
}
