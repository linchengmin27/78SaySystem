package com.lcm.util.filter;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.lcm.entity.base.EntityParamType;
import com.lcm.entity.business.Category;
import com.lcm.service.business.IArticleService;

public class CacheLoaderUtil extends ContextLoaderListener {

	/**
	 *  重写ContextLoaderListener的contextInitialized方法 
	 * */
	public void contextInitialized(ServletContextEvent event) {
		System.out.println("项目正在启动中,请稍等...");
		super.contextInitialized(event);
		ApplicationContext applicationContext = WebApplicationContextUtils.getWebApplicationContext(event.getServletContext());
		IArticleService articleService = (IArticleService) applicationContext.getBean("articleService");
		
		Map<Category, List<Category>> categoryMap = new LinkedHashMap<Category, List<Category>>();
		List<Category> parents = articleService.getParentCategoryList();
		for (Category parant: parents) {
			List<Category> children = articleService.getChilrenCategoryList(parant.getId());
			categoryMap.put(parant, children);
		}
		
		EntityParamType.categoryMap = categoryMap;
		
		System.out.println("项目启动完成,欢迎使用");
	}
}
