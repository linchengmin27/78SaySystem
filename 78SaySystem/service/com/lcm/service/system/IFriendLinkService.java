package com.lcm.service.system;

import java.util.List;

import com.lcm.entity.system.FriendLink;

public interface IFriendLinkService {
	/**
	 * 获取友情链接列表
	 * */
	public List<FriendLink> getFriendLinkList();
}
