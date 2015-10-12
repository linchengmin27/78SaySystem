package com.lcm.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.lcm.entity.base.BaseEntity;

@Entity
@Table(name="SystemParam")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class SystemParam extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6908656201477617657L;
	private String code;
	private String value;
	
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getValue() {
		return value;
	}
	
	public void setValue(String value) {
		this.value = value;
	}
}
