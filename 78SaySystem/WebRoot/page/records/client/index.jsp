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

	<script type="text/javascript">
	function ajaxSearch(page) {
		var categoryId = '${categoryId}';
		var url = '';
		if($.trim(categoryId) != '') {
			url = basePath + '/records/index/category/' + categoryId + '/' + page + '.html';
		} else {
			url = basePath + '/records/index/' + page + '.html';
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
			<h1 class="color-green pull-left">吉尼斯纪录 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="${ctx}/index.html">首页</a> <span class="divider">/</span></li>
	            <li>
	            	<a href="${ctx}/records/index.html">吉尼斯纪录 </a>
	            	<c:if test="${categoryId ne 14}">
	            	<span class="divider">/</span>
	            	</c:if>
	            </li>
	            <c:if test="${categoryId ne 14}">
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
	            	<a class="img-hover" href="#">
	                	<img src="${ctx}/${article.logo}" alt="${article.title}" />
	                	<%--<img src="${ctx}/images/clients/cisco.png" class="img-colorful" alt="" />--%>
					</a>                        
	                <div style="display: inline;">
	                	<h3><a class="linked color-green" href="${ctx}/records/detail/${article.id}.html">${article.title}</a></h3>
	                	<p>${article.content}</p>
	                </div>
	            </div>
	            </c:forEach>
	            <%@include file="../../include/client/ajax_pager.jsp" %>  
	        </div><!--/span9-->
	
	    	<div class="span3">
	        	<!-- Our Services -->
	            <div class="who margin-bottom-30">
	                <div class="headline"><h3>吉尼斯记录简介</h3></div>
	                <p>《吉尼斯世界纪录大全》（又称金氏世界纪录）首次由著名的吉尼斯酿酒厂于1954年出版，其老板是执行厂长休·比弗爵士（Sir Hugh Beaver）。孪生兄弟（twin brothers）诺里斯·麦克沃特（Norris McWhirter）和罗斯·麦克沃特（Ross McWhirter）承担编辑工作。</p>
	            </div>
	
	            <div class="who margin-bottom-30">
	                <div class="headline"><h3>分类</h3></div>
	                <ul class="unstyled">
                        <li><h5><a href="${ctx}/records/index/category/15.html"><i class="icon-trophy"></i>吉尼斯记录——&nbsp;&nbsp;人&nbsp;&nbsp;<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/records/index/category/16.html"><i class="icon-trophy"></i>吉尼斯记录——&nbsp;&nbsp;事&nbsp;&nbsp;<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/records/index/category/17.html"><i class="icon-trophy"></i>吉尼斯记录——&nbsp;&nbsp;物&nbsp;&nbsp;<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/records/index/category/18.html"><i class="icon-trophy"></i>吉尼斯记录——单位<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/records/index/category/19.html"><i class="icon-trophy"></i>吉尼斯记录——国家<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/records/index/category/20.html"><i class="icon-trophy"></i>吉尼斯记录——思维<i class="icon-trophy"></i></a></h5></li>
	                </ul>
	            </div>
	        </div><!--/span3-->
	    </div><!--/row-fluid-->      
	    <%@include file="../../include/client/link.jsp" %>  
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
