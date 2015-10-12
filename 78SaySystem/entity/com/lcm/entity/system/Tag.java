package com.lcm.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="Tag")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Tag extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3908735078010815908L;
	private String name;
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

}
