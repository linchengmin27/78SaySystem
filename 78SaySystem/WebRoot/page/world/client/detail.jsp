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
	            <li><a href="${ctx}/world/index.action">世界之最</a> <span class="divider">/</span></li>
	            <li class="active">${entity.title}</li>
	        </ul>
	    </div><!--/container-->
	</div>
	<!-- 面包屑导航 E -->
  	
  	<!-- 内容 S -->
  	<div class="container">		
		<div class="row-fluid blog-page blog-item">
	        <!-- Left Sidebar -->
	    	<div class="span9">
	        	<div class="blog margin-bottom-30">
	            	<h3>${entity.title}</h3>
	            	<ul class="unstyled inline blog-info">
	                	<li><i class="icon-calendar"></i> ${entity.displayCreateTime}</li>
	                	<li><i class="icon-pencil"></i> ${entity.editor}</li>
	                	<li><i class="icon-comments"></i> <a href="javascript:void(0);">${entity.reviews} 评论</a></li>
	                	<li>
	                        <i class="icon-tags"></i> 
	                        <c:set value="${entity.tag.split(',')}" var="tags"></c:set>
	                        <c:forEach items="${tags}" var="t">
	                        <a href="#">${t}</a>&nbsp;&nbsp;
	                        </c:forEach>
	                    </li>
	                </ul>
	                
	            	<blockquote class="hero">
	                    <small>${entity.abstract_}</small>
	                </blockquote>
	            	
	                ${chapter.content}
	            </div>
	
				<hr />
	
	            <h3 class="color-green">观摩区</h3>
	            <div class="media">
	                <a class="pull-left" href="#">
	                    <img class="media-object" src="${ctx}/images/sliders/elastislide/2.jpg" alt="" />
	                </a>
	                <div class="media-body">
	                <h4 class="media-heading">Media heading <span>5 hours ago</span></h4>
	                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	                </div>
	                
	            </div><!--/media-->
	
	            <div class="media">
	                <a class="pull-left" href="#">
	                    <img class="media-object" src="${ctx}/images/sliders/elastislide/9.jpg" alt="" />
	                </a>
	                <div class="media-body">
	                    <h4 class="media-heading">Media heading <span>July 5,2013</span></h4>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	                </div>
	            </div><!--/media-->
	
	            <hr />
	
	            <!-- Leave a Comment -->
	            <div class="post-comment">
	            	<h3 class="color-green">到此一游</h3>
	                <form />
	                    <textarea rows="5" class="span10"></textarea>
	                    <p><button type="submit" class="btn-u">提&nbsp;&nbsp;&nbsp;&nbsp;交</button></p>
	                </form>
	            </div><!--/post-comment-->
	        </div><!--/span9-->
	
	        <!-- Right Sidebar -->
	    	<div class="span3">
	        	<div class="posts">
		            <div class="headline"><h3>相关推荐</h3></div>
                	<dl class="dl-horizontal">
	                    <dt><a href="#"><img src="${ctx}/images/sliders/elastislide/6.jpg" alt="" /></a></dt>
	                    <dd>
	                        <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
	                    </dd>
	                </dl>
	                <dl class="dl-horizontal">
	               	 	<dt><a href="#"><img src="${ctx}/images/sliders/elastislide/10.jpg" alt="" /></a></dt>
	                    <dd>
	                        <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
	                    </dd>
	                </dl>
	                <dl class="dl-horizontal">
	                	<dt><a href="#"><img src="${ctx}/images/sliders/elastislide/11.jpg" alt="" /></a></dt>
	                    <dd>
	                        <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
	                    </dd>
	                </dl>
	                <dl class="dl-horizontal">
	                    <dt><a href="#"><img src="${ctx}/images/sliders/elastislide/6.jpg" alt="" /></a></dt>
	                    <dd>
	                        <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
	                    </dd>
	                </dl>
	                <dl class="dl-horizontal">
	               	 	<dt><a href="#"><img src="${ctx}/images/sliders/elastislide/10.jpg" alt="" /></a></dt>
	                    <dd>
	                        <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
	                    </dd>
	                </dl>
                </div>
	
	        	<div class="headline"><h3>标签</h3></div>
	            <ul class="unstyled inline blog-tags">
	            	<li><a href="#"><i class="icon-tags"></i> Business</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Music</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Internet</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Education</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> People</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Math</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Photos</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Electronics</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Apple</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Canada</a></li>
	            </ul>
	        </div><!--/span3-->
	    </div><!--/row-fluid-->        
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
