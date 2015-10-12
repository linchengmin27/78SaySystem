package com.lcm.entity.business;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="ContactUs")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class ContactUs extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2038151614893178519L;
	private String name;
	private String email;
	private String qq;
	private String message;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getQq() {
		return qq;
	}
	
	public void setQq(String qq) {
		this.qq = qq;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}

}
