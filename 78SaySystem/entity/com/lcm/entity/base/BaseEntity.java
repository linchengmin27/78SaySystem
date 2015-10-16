package com.lcm.entity.base;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;
import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;

@MappedSuperclass
public class BaseEntity implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3687405297736257316L;
	private Long id;
	private Boolean isDelete;
	private Timestamp createTime;
	private Timestamp modifyTime;
	
	private String displayCreateTime;
	
	@Id
	@GeneratedValue
	@Column(name="id")
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	@Column(name="isDelete")
	public Boolean getIsDelete() {
		return isDelete;
	}
	
	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}
	
	@Column(name="createTime")
	public Timestamp getCreateTime() {
		return createTime;
	}
	
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	
	@Column(name="modifyTime")
	public Timestamp getModifyTime() {
		return modifyTime;
	}
	
	public void setModifyTime(Timestamp modifyTime) {
		this.modifyTime = modifyTime;
	}

	public void setDisplayCreateTime(String displayCreateTime) {
		this.displayCreateTime = displayCreateTime;
	}

	@Transient
	public String getDisplayCreateTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		this.displayCreateTime = sdf.format(this.createTime);
		return displayCreateTime;
	}
	
	
}
