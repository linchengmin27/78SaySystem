package com.lcm.entity.base;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.lcm.entity.business.Category;

public class EntityParamType {
	public static Map<Category, List<Category>> categoryMap = new LinkedHashMap<Category, List<Category>>();
	
	public static class ListType { //列表显示类型
		public static final int WORLD = 1;
		public static final int RECORDS = 2;
		public static final int MYSTERY = 3;
		public static final int WONDER = 4;
		public static final int ARTICLE = 5;
	}
	
	public static class IsHeadlines { //是否为头条
		public static final Boolean YES = true;
		public static final Boolean NO = false;
	}
	
	public static class IsPlacedHome { //是否置于首页
		public static final Boolean YES = true;
		public static final Boolean NO = false;
	}
	
	public static class IsFeatured { //是否特别推荐
		public static final Boolean YES = true;
		public static final Boolean NO = false;
	}
	
	public static class IsPublish { //是否发布
		public static final Boolean YES = true;
		public static final Boolean NO = false;
	}
	
	public static class IsDelete { //是否删除
		public static final Boolean YES = true;
		public static final Boolean NO = false;
	}
	
	public static class IsOpen { //是否开启
		public static final Boolean YES = true;
		public static final Boolean NO = false;
	}
}
