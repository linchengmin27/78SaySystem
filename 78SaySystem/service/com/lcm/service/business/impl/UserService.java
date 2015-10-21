package com.lcm.service.business.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lcm.entity.business.Comment;
import com.lcm.service.base.BaseService;
import com.lcm.service.business.IUserService;

@Service
public class UserService extends BaseService implements IUserService {
	/**
	 * 获取指定文章的评论信息
	 * */
	public List<Comment> getCommentList(Long articleId, Integer page, Integer pageSize) {
		String hql = "from Comment";
		return null;
	}
}
