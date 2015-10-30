package com.lcm.util.filter;

import javax.servlet.ServletContextEvent;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.WebApplicationContextUtils;

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
		System.out.println("-----------" + articleService.getTagList().size());
		
		System.out.println("项目启动完成,欢迎使用");
	}
}
