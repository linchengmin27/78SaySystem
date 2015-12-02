<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../../include/client/import.jsp" %>

<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->  
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
  <head>
    <title>${category.name}_78Say奇葩说</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%@include file="../../include/client/style.jsp" %>
	<script type="text/javascript">
	function ajaxSearch(page) {
		var url = basePath + '/wonder/news/index/' + page + '.html';
		window.location.href = url;
	}
	</script>
  </head>
  
  <body>
  	<%@include file="../../include/client/top.jsp" %>
  	
  	<!-- 面包屑导航 S -->
  	<div class="breadcrumbs margin-bottom-40">
		<div class="container">
			<h1 class="color-green pull-left">奇葩天下 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="${ctx}/index.html">首页</a> <span class="divider">/</span></li>
	            <li>
	            	<a>奇葩天下 </a>
	            	<c:if test="${categoryId ne 30}">
	            	<span class="divider">/</span>
	            	</c:if>
	            </li>
	            <c:if test="${categoryId ne 30}">
	            <li class="active">${category.name}</li>
	            </c:if>
	        </ul>
	    </div><!--/container-->
	</div>
	<!-- 面包屑导航 E -->
  	
  	<!-- 内容 S -->
  	<div class="container">		
		<div class="row-fluid">
	    	<div class="span9">
	    		<c:forEach items="${pageBean.list}" var="article" varStatus="st">
	            <div class="clients-page margin-bottom-20">
	            	<a class="img-hover" href="${ctx}/wonder/detail/${article.id}.html">
	                	<img src="${ctx}/${article.logo}" alt="${article.title}" />
	                	<%--<img src="${ctx}/images/clients/cisco.png" class="img-colorful" alt="" />--%>
					</a>                        
	                <div style="display: inline;">
	                	<h3 title="${article.title}"><a class="linked color-green" href="${ctx}/wonder/detail/${article.id}.html">${article.title}</a></h3>
	                	<p>${article.content}</p>
	                </div>
	            </div>
	            </c:forEach>
	            <%@include file="../../include/client/ajax_pager.jsp" %>  
	        </div><!--/span9-->
	
	    	<div class="span3">
	        	<div class="headline"><h3>热门标签</h3></div>
	            <ul class="unstyled inline blog-tags">
	            	<c:forEach items="${articleTags}" var="articleTag">
	            	<li><a href="${ctx}/search/${articleTag.name}.html"><i class="icon-tags"></i>${articleTag.name}</a></li>
	            	</c:forEach>
	            </ul>
				
				<div class="posts">
		            <div class="headline"><h3>当前热评</h3></div>
		            <c:forEach items="${reviewsArticles}" var="article">
                	<dl class="dl-horizontal">
	                    <dt><a href="${ctx}/wonder/detail/${article.id}.html"><img src="${ctx}/${article.logo}" alt="" /></a></dt>
	                    <dd>
	                        <p><a href="${ctx}/wonder/detail/${article.id}.html">${article.title}</a></p> 
	                    </dd>
	                </dl>
	                </c:forEach>
                </div>
	        </div><!--/span3-->
	    </div><!--/row-fluid-->      
	    <%@include file="../../include/client/link.jsp" %>  
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
