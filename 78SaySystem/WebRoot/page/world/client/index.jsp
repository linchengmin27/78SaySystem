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
	<meta http-equiv="keywords" content="世界之最">
	<meta http-equiv="description" content="世界之最，网罗各种动物之最、植物之最、人类之最、科技之最、自然之最、机械之最、文物之最、艺术之最
	、娱乐之最、建筑之最、商业之最、军事之最">
	<%@include file="../../include/client/style.jsp" %>
	<link rel="stylesheet" href="${ctx}/plugins/portfolioSorting/css/sorting.css" /> 
	
	<script type="text/javascript">
	function ajaxSearch(page) {
		var categoryId = '${categoryId}';
		var url = '';
		if($.trim(categoryId) != '') {
			url = basePath + '/world/index/category/' + categoryId + '/' + page + '.html';
		} else {
			url = basePath + '/world/index/' + page + '.html';
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
			<h1 class="color-green pull-left">世界之最 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="${ctx}/index.html">首页</a> <span class="divider">/</span></li>
	            <li>
	            	<a href="${ctx}/world/index.html">世界之最</a>
	            	<c:if test="${categoryId ne 1}">
	            	<span class="divider">/</span>
	            	</c:if>
	            </li>
	            <c:if test="${categoryId ne 1}">
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
	            <ul class="portfolio recent-work clearfix"> 
	            	<c:forEach items="${pageBean.list}" var="article" varStatus="st">
	                <li data-id="id-${st.index + 1}" class="web" title="${article.title}">
	                    <a href="${ctx}/world/detail/${article.id}.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/${article.logo}" alt="" style="height: 150px;width: 270px;"/></em>
	                        <span>
	                            <strong>
	                            	<c:choose>
		                    		<c:when test="${fn:length(article.title) <= 12}">
		                    		${article.title}
		                    		</c:when>
		                    		<c:otherwise>
		                    		${fn:substring(article.title, 0, 12)}..
		                    		</c:otherwise>
		                    		</c:choose>
	                            </strong>
	                            <i style="font-style:normal">日期：${article.displayFullTime}</i>
	                        </span>
	                    </a>
	                </li>
	                </c:forEach>
	            </ul>
	        </div>   
	        <%@include file="ajax_pager.jsp" %>  
        	<%@include file="../../include/client/link.jsp" %>                  
	    </div><!--/row-fluid-->         
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
