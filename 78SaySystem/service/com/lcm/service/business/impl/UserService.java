package com.lcm.service.business.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import com.lcm.entity.base.EntityParamType;
import com.lcm.entity.business.Comment;
import com.lcm.service.base.BaseService;
import com.lcm.service.business.IUserService;
import com.lcm.util.file.DateUtil;

@Service
public class UserService extends BaseService implements IUserService {
	/**
	 * 获取指定文章的评论信息个数
	 * */
	public long countComment(Long articleId) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "select count(*) from Comment where articleId=:articleId and isDelete=:isDelete";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("articleId", articleId);
		return dao.getAllRow(hql, paramMap);
	}
	
	/**
	 * 获取指定文章的评论信息
	 * */
	public List<Comment> getCommentList(Long articleId, Integer page, Integer pageSize) {
		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		String hql = "from Comment where articleId=:articleId and isDelete=:isDelete order by createTime desc";
		paramMap.put("isDelete", EntityParamType.IsDelete.NO);
		paramMap.put("articleId", articleId);
		return dao.getEntities(hql, paramMap, page, pageSize);
	}
	
	/**
	 * 新增文章的评论信息
	 * */
	public Map<Boolean, String> addComment(Comment comment) {
		Map<Boolean, String> resultMap = new LinkedHashMap<Boolean, String>();
		comment.setIsDelete(EntityParamType.IsDelete.NO);
		comment.setCreateTime(DateUtil.getCurrentTime());
		comment.setModifyTime(DateUtil.getCurrentTime());
		boolean isSuccess = dao.addEntity(comment);
		if(isSuccess) {
			resultMap.put(true, "您已经在此留下深刻的一笔!!!");
		} else {
			resultMap.put(false, "操作失败，请稍后重试!!!");
		}
		return resultMap;
	}
}
