package com.lcm.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="FriendLink")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class FriendLink extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8843364488146194595L;
	private String title;
	private String url;
	private String logo;
	private String logo2;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getLogo2() {
		return logo2;
	}
	public void setLogo2(String logo2) {
		this.logo2 = logo2;
	}
	
	
}
