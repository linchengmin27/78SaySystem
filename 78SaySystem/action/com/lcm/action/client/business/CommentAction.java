package com.lcm.action.client.business;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import com.lcm.action.client.base.BaseAction;
import com.lcm.entity.business.Comment;
import com.lcm.service.business.IUserService;
import com.lcm.util.file.AddressUtil;
import com.lcm.util.file.JsonUtil;
import com.lcm.util.file.PageBean;

@ParentPackage("default")
public class CommentAction extends BaseAction<Comment> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5196604521035132594L;
	private static final String PATH = "/page/user/client";
	private IUserService userService;
	
	public Comment getModel() {
		init();
		if(entity == null) entity = new Comment();
		return entity;
	}
	
	@Action(value = "/comment/list", results = {@Result(name = "success", location = PATH + "/comment_list.jsp") })  
	public String index() {
		entity.setArticle(articleService.getArticleDetail(entity.getArticle().getId()));
		long allRow = userService.countComment(entity.getArticle().getId());
		List<Comment> list = userService.getCommentList(entity.getArticle().getId(), page, pageSize);
		pageBean = new PageBean<Comment>(list, allRow, page, pageSize);
		return SUCCESS;
	}
	
	@Action(value= "/comment/add/done")
	public String addDone() {
		String ip = getIpAddr();
//		String ip = "110.80.41.146";
		entity.setName(new AddressUtil().getAddress("ip="+ip, "utf-8"));
		entity.setLogo(getCommentLogo());
		Map<Boolean, String> resultMap = userService.addComment(entity); 
		if(resultMap.containsKey(true)) {
			articleService.updateArticleReviews(entity.getArticle().getId());
		}
		JsonUtil.handleJSON(JsonUtil.getJsonContent(resultMap));
		return NONE;
	}

	private String getCommentLogo() {
		String basePath = "images/sliders/elastislide/";
		int random = (int)(Math.random() * 9) + 1;
		return basePath + random + ".jpg";
	}
	
	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public IUserService getUserService() {
		return userService;
	}

}
