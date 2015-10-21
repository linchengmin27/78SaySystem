package com.lcm.action.client.business;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.lcm.action.client.base.BaseAction;
import com.lcm.entity.business.Article;
import com.lcm.entity.business.Comment;
import com.lcm.util.file.PageBean;
import com.lcm.util.file.StringUtil;

@ParentPackage("default")
public class CommentAction extends BaseAction<Comment> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5196604521035132594L;
	private static final String PATH = "/page/user/client";
	
	public Comment getModel() {
		init();
		if(entity == null) entity = new Comment();
		return entity;
	}
	
	@Action(value = "/comment/list", results = {@Result(name = "success", location = PATH + "/comment_list.jsp") })  
	public String index() {
		return SUCCESS;
	}
}
