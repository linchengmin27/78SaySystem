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
	            <li class="active">奇葩新闻</li>
	        </ul>
	    </div><!--/container-->
	</div>
	<!-- 面包屑导航 E -->
  	
  	<!-- 内容 S -->
  	<div class="container">		
		<div class="row-fluid">
	    	<div class="span9">
	            <div class="clients-page margin-bottom-20">
	            	<a class="img-hover" href="#">
	                	<img src="${ctx}/images/clients/cisco_grey.png" alt="" />
	                	<img src="${ctx}/images/clients/cisco.png" class="img-colorful" alt="" />
					</a>                        
	                <div style="display: inline;">
	                	<h3><a class="linked color-green" href="#">阿根廷摄影师一张胶片环拍北京二环 创吉尼斯纪录</a></h3>
	                	<p>据报道：近日，中国的北京二环也诞生了一项吉尼斯世界纪录，阿根廷摄影师埃斯特班使用了一张胶片拍摄下了整个北京二环线的风景，由此创造了吉尼斯世界纪录上最长照片底片的纪录。此前的这一纪录也是由埃斯特班创造的...</p>
	                </div>
	            </div>
	            <div class="clients-page margin-bottom-20">
	            	<a class="img-hover" href="#">
	                	<img src="${ctx}/images/clients/cocacola_grey.png" alt="" />
	                	<img src="${ctx}/images/clients/cocacola.png" class="img-colorful" alt="" />
					</a>  
					<div style="display: inline;">
	                	<h3><a class="linked color-green" href="#">日本高龄爵士乐队荣获吉尼斯世界纪录称号</a></h3>
	                	<p>据吉尼斯世界纪录的报道：一支来自日本关西的爵士乐队Golden Senior Trio成为了世界上最高龄的爵士乐队。这支乐队于2008年组建，成员包括电铁琴手锅岛直昶（89岁）、钢琴手大塚善章（81）和贝斯手宫本直介（78）...</p>
	                </div>                      
	            </div>
	            <div class="clients-page margin-bottom-20">
	            	<a class="img-hover" href="#">
	                	<img src="${ctx}/images/clients/hp_grey.png" alt="" />
	                	<img src="${ctx}/images/clients/hp.png" class="img-colorful" alt="" />
					</a>   
					<div style="display: inline;">
	                	<h3><a class="linked color-green" href="#">关于冬奥会的吉尼斯世界纪录称号回顾</a></h3>
	                	<p>2015年7月31日，中国北京被宣布为2022年第二十四届冬季奥林匹克运动会举办地。在分享并庆祝这一好消息的同时，我们也挑选了一些冬奥会上的吉尼斯世界纪录称号，让我们一起来跟着这些经典照片，再来回顾一下那些精彩的...</p>
	                </div>                     
	            </div>
	            <div class="clients-page margin-bottom-20">
	            	<a class="img-hover" href="#">
	                	<img src="${ctx}/images/clients/shell_grey.png" alt="" />
	                	<img src="${ctx}/images/clients/shell.png" class="img-colorful" alt="" />
					</a>     
					<div style="display: inline;">
	                	<h3><a class="linked color-green" href="#">全美热狗日上创造的吉尼斯世界纪录</a></h3>
	                	<p>中国现在正是一年中最热的时候，但是在遥远的美国，7月23日是全美热狗日。这一天，世界上最贵的热狗诞生了，美国西雅图一家叫Tokyo Dog店制作的热狗一个就要169美金(相当于1千多人民币的价格)；除此之外，全美热狗...</p>
	                </div>                   
	            </div>
	            <div class="clients-page margin-bottom-20">
	            	<a class="img-hover" href="#">
	                	<img src="${ctx}/images/clients/vadafone_grey.png" alt="" />
	                	<img src="${ctx}/images/clients/vadafone.png" class="img-colorful" alt="" />
					</a>      
					<div style="display: inline;">
	                	<h3><a class="linked color-green" href="#">第一个走钢丝跨越尼亚加拉大瀑布的人</a></h3>
	                	<p>第一个走钢丝跨越尼亚加拉大瀑布的人 尼亚加拉瀑布是世界第一大跨国瀑布，位于加拿大安大略省和美国纽约州的尼亚加拉河上，是北美东北部尼亚加拉河上的大瀑布，也是美洲大陆最著名的奇景之一。平均流量约5720m³/s...</p>
	                </div>                  
	            </div>
	            <div class="pagination">
		            <ul>
		                <li><a href="#">上一页</a></li>
		                <li><a href="#">1</a></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">下一页</a></li>
		            </ul>
		        </div>   
	        </div><!--/span9-->
	
	    	<div class="span3">
	        	<div class="headline"><h3>新闻标签</h3></div>
	            <ul class="unstyled inline blog-tags">
	            	<li><a href="#"><i class="icon-tags"></i> Business</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Music</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Internet</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Money</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Google</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> TV Shows</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Education</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> People</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> People</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Math</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Photos</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Electronics</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Apple</a></li>
	            	<li><a href="#"><i class="icon-tags"></i> Canada</a></li>
	            </ul>
				
				<div class="posts">
		            <div class="headline"><h3>当前热评</h3></div>
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
	        </div><!--/span3-->
	    </div><!--/row-fluid-->      
	    <%@include file="../../include/client/link.jsp" %>  
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
