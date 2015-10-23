package com.lcm.service.business;

import java.util.List;
import java.util.Map;

import com.lcm.entity.business.Comment;

public interface IUserService {
	/**
	 * 获取指定文章的评论信息个数
	 * */
	public long countComment(Long articleId);
	
	/**
	 * 获取指定文章的评论信息
	 * */
	public List<Comment> getCommentList(Long articleId, Integer page, Integer pageSize);
	
	/**
	 * 新增文章的评论信息
	 * */
	public Map<Boolean, String> addComment(Comment comment);
}
