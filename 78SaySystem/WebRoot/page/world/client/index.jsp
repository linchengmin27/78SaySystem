<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

  </head>
  
  <body>
  	<%@include file="../../include/client/top.jsp" %>
  	
  	<!-- 面包屑导航 S -->
  	<div class="breadcrumbs margin-bottom-40">
		<div class="container">
			<h1 class="color-green pull-left">世界之最 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="${ctx}/index.action">首页</a> <span class="divider">/</span></li>
	            <li>
	            	<a href="${ctx}/world/index.action">世界之最</a> 
	            	<c:if test="${categoryId eq 1}">
	            	<span class="divider">/</span>
	            	</c:if>
	            </li>
	            <c:if test="${categoryId eq 1}">
	            <li class="active">动物之最</li>
	            </c:if>
	        </ul>
	    </div><!--/container-->
	</div>
	<!-- 面包屑导航 E -->
  	
  	<!-- 内容 S -->
  	<div class="container portfolio-columns portfolio-responsive"> 	
  		<div class="row-fluid">
  		<c:forEach items="${pageBean.list}" var="article" begin="0" end="2" varStatus="st">
        <div class="view view-tenth span4">
        	<img src="${ctx}/${article.logo}" alt="${article.title}" />
            <div class="mask">
                <h2>${article.title}</h2>
                <p>${article.content}...</p>
                <a href="${ctx}/world/detail.action?id=${article.id}" class="info">阅读更多</a>
            </div>
        </div>
  		</c:forEach>
  		</div><!--/row-fluid-->
  		
  		<div class="row-fluid">
  		<c:forEach items="${pageBean.list}" var="article" begin="3" end="5" varStatus="st">
  		
  		</c:forEach>
  		</div><!--/row-fluid-->
  		
  		<div class="row-fluid">
  		<c:forEach items="${pageBean.list}" var="article" begin="6" end="8" varStatus="st">
  		
  		</c:forEach>
  		</div><!--/row-fluid-->
  		
  		<div class="row-fluid">
  		<c:forEach items="${pageBean.list}" var="article" begin="9" end="11" varStatus="st">
  		
  		</c:forEach>
  		</div><!--/row-fluid-->
  		
	     <%@include file="../../include/client/ajax_pager.jsp" %>  
        <%@include file="../../include/client/link.jsp" %>     
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
