<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../../include/client/import.jsp" %>

<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->  
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
  <head>
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%@include file="../../include/client/style.jsp" %>
	<link rel="stylesheet" href="${ctx}/plugins/portfolioSorting/css/sorting.css" /> 
	
	<script type="text/javascript">
	function ajaxSearch(page) {
		var categoryId = '${categoryId}';
		var url = '';
		if($.trim(categoryId) != '') {
			url = basePath + '/mystery/index/category/' + categoryId + '/' + page + '.html';
		} else {
			url = basePath + '/mystery/index/' + page + '.html';
		}
		window.location.href = url;
	}
	</script>
  </head>
  
  <body>
  	<%@include file="../../include/client/top.jsp" %>
  	
  	<!-- 面包屑导航 S -->
  	<div class="breadcrumbs margin-bottom-40">
		<div class="container">
			<h1 class="color-green pull-left">未接之谜 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="${ctx}/index.html">首页</a> <span class="divider">/</span></li>
	            <li>
	            	<a href="${ctx}/mystery/index.html">未接之谜 </a>
	            	<c:if test="${categoryId ne 21}">
	            	<span class="divider">/</span>
	            	</c:if>
	            </li>
	            <c:if test="${categoryId ne 21}">
	            <li class="active">${category.name}</li>
	            </c:if>
	        </ul>
	    </div><!--/container-->
	</div>
	<!-- 面包屑导航 E -->
  	
  	<!-- 内容 S -->
  	<div class="container"> 	
		<div class="row-fluid"> 
	        <div id="w">    
	        	<div class="sort" id="sort">
					<ul class="unstyled inline"> 
	                	<li><a href="${ctx}/mystery/index.html" <c:if test="${categoryId eq 21}">class="selected"</c:if>>所有</a></li>
	                	<li><a href="${ctx}/mystery/index/category/22.html" <c:if test="${categoryId eq 22}">class="selected"</c:if>>奇闻</a></li>
	                	<li><a href="${ctx}/mystery/index/category/23.html" <c:if test="${categoryId eq 23}">class="selected"</c:if>>宇宙</a></li>
	                	<li><a href="${ctx}/mystery/index/category/24.html" <c:if test="${categoryId eq 24}">class="selected"</c:if>>自然</a></li>
	                	<li><a href="${ctx}/mystery/index/category/25.html" <c:if test="${categoryId eq 25}">class="selected"</c:if>>考古</a></li>
	                	<li><a href="${ctx}/mystery/index/category/26.html" <c:if test="${categoryId eq 26}">class="selected"</c:if>>科学</a></li>
	                	<li><a href="${ctx}/mystery/index/category/27.html" <c:if test="${categoryId eq 27}">class="selected"</c:if>>历史</a></li>
	                	<li><a href="${ctx}/mystery/index/category/28.html" <c:if test="${categoryId eq 28}">class="selected"</c:if>>UFO</a></li>
	                </ul>
	            </div>
	            <ul class="portfolio recent-work clearfix"> 
	            	<c:forEach items="${pageBean.list}" var="article" varStatus="st">
	                <li data-id="id-${st.index + 1}" class="web" title="${article.title}">
	                    <a href="${ctx}/mystery/detail/${article.id}.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/${article.logo}" alt="" style="height: 150px;width: 100%;max-width: 270px;"/></em>
	                        <span>
	                            <strong>${article.title}</strong>
	                            <i style="font-style:normal">日期：${article.displayFullTime}</i>
	                        </span>
	                    </a>
	                </li>
	                </c:forEach>
	            </ul>
	        </div>   
	        <%@include file="../../include/client/ajax_pager.jsp" %>  
        	<%@include file="../../include/client/link.jsp" %>                  
	    </div><!--/row-fluid-->         
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
