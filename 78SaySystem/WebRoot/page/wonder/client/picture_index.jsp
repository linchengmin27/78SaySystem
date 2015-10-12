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
			<h1 class="color-green pull-left">奇葩天下 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="index.html">首页</a> <span class="divider">/</span></li>
	            <li>奇葩天下 <span class="divider">/</span></li>
	            <li class="active">奇葩图片</li>
	        </ul>
	    </div><!--/container-->
	</div>
	<!-- 面包屑导航 E -->
  	
  	<!-- 内容 S -->
  	<div class="container portfolio-columns portfolio-responsive"> 	
		<div class="row-fluid"> 
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/1.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item1</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/2.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item2</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/3.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item3</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/4.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item4</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	    </div><!--/row-fluid-->         
		<div class="row-fluid"> 
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/5.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item1</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/6.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item2</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/7.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item3</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/8.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item4</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	    </div><!--/row-fluid-->         
		<div class="row-fluid"> 
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/9.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item1</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/10.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item2</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/3.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item3</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span3">
	        	<img src="${ctx}/images/carousel/4.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item4</h2>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	    </div><!--/row-fluid-->         
	    
	    <div class="pagination pagination-centered">
             <ul>
                 <li><a href="#">上一页</a></li>
                 <li><a href="#">1</a></li>
                 <li><a href="#">2</a></li>
                 <li><a href="#">3</a></li>
                 <li><a href="#">4</a></li>
                 <li><a href="#">下一页</a></li>
             </ul>
        </div>  
        <%@include file="../../include/client/link.jsp" %>  
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
