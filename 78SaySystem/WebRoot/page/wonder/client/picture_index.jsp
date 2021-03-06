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
	<meta http-equiv="keywords" content="奇葩图片">
	<meta http-equiv="description" content="奇葩图片，网罗天下各类奇葩图片">
	<%@include file="../../include/client/style.jsp" %>
	<link rel="stylesheet" href="${ctx}/plugins/portfolioSorting/css/sorting.css" /> 

	<script type="text/javascript">
	function ajaxSearch(page) {
		var url = basePath + '/wonder/picture/index/' + page + '.html';
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
	        <div id="w">    
	            <ul class="portfolio recent-work clearfix"> 
	            	<c:forEach items="${pageBean.list}" var="article" varStatus="st">
	                <li data-id="id-${st.index + 1}" class="web" title="${article.title}">
	                    <a href="${ctx}/wonder/detail/${article.id}.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/${article.logo}" alt="" style="height: 150px;width: 100%;max-width: 270px;"/></em>
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
	        <%@include file="picture_ajax_pager.jsp" %>  
        	<%@include file="../../include/client/link.jsp" %>                  
	    </div><!--/row-fluid-->         
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
