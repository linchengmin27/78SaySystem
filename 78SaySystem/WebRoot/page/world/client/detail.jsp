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
	            <li><a href="index.html">首页</a> <span class="divider">/</span></li>
	            <li>世界之最 <span class="divider">/</span></li>
	            <li class="active">世界上最长的蛇</li>
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
	            	<h3>世界上最长的蛇</h3>
	            	<ul class="unstyled inline blog-info">
	                	<li><i class="icon-calendar"></i> 2015年08月07日</li>
	                	<li><i class="icon-pencil"></i> 张思思</li>
	                	<li><i class="icon-comments"></i> <a href="#">24 评论</a></li>
	                	<li>
	                        <i class="icon-tags"></i> 
	                        <a href="#">Technology</a> 
	                        <a href="#">Education</a>
	                        <a href="#">Internet</a>
	                        <a href="#">Media</a>
	                    </li>
	                </ul>
	                
	            	<blockquote class="hero">
	                    <small>印度尼西亚一家小公园展出了一条非常罕见的蛇，身长14.85米，体重447公斤，这是近100年来人类所发现的最长最大的蛇，也是目前世界上所知最长的蛇。</small>
	                </blockquote>
	            	
	                <div class="blog-img" style="text-align: center;"><img src="${ctx}/upload/2330525222-0.jpg" alt="" /></div>
	                <p>印度尼西亚一家小公园展出了一条非常罕见的蛇，身长14.85米，体重447公斤，这是近100年来人类所发现的最长最大的蛇，也是目前世界上所知最长的蛇。</p>
	                <p>这条大蛇是在印尼西部苏门答腊岛的一个原始森林中被发现的，当地人将它捕获后卖给了公园，公园的管理人员将这条大蛇取名为“桂花”。虽然名字听起来比较温柔，但据说“桂花”的大口一旦张开非常吓人，可以很轻松地吞下整整一个人。</p>
	                <p>印尼的国家科学研究所、农业研究所等学术机构都对这条蛇进行了检验，确认了其身长、体重以及品种。很多动物学家都表示，从来没有见过这么大、这么长的蛇。</p>
	            	<p>据说，要制服这么大的蛇，至少需要8到10个壮年男子。此前，吉尼斯世界记录中所记载和公认的世界最长蛇是一条身上花纹呈网状的大蟒，身长10米，已于1912年在印尼被射杀。研究所的动物学家还透露说，此次发现的这条世界上最长的蛇是东南亚的“土著蛇”。</p>
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
