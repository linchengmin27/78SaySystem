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
			<h1 class="color-green pull-left">吉尼斯纪录 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="index.html">首页</a> <span class="divider">/</span></li>
	            <li>吉尼斯纪录 <span class="divider">/</span></li>
	            <li class="active">思维</li>
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
	        	<!-- Our Services -->
	            <div class="who margin-bottom-30">
	                <div class="headline"><h3>吉尼斯记录简介</h3></div>
	                <p>《吉尼斯世界纪录大全》（又称金氏世界纪录）首次由著名的吉尼斯酿酒厂于1954年出版，其老板是执行厂长休·比弗爵士（Sir Hugh Beaver）。孪生兄弟（twin brothers）诺里斯·麦克沃特（Norris McWhirter）和罗斯·麦克沃特（Ross McWhirter）承担编辑工作。</p>
	            </div>
	
	            <div class="who margin-bottom-30">
	                <div class="headline"><h3>分类</h3></div>
	                <ul class="unstyled">
                        <li><h5><a href="${ctx}/page/records/client/index.jsp"><i class="icon-trophy"></i>吉尼斯记录——&nbsp;&nbsp;人&nbsp;&nbsp;<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/page/records/client/index.jsp"><i class="icon-trophy"></i>吉尼斯记录——&nbsp;&nbsp;事&nbsp;&nbsp;<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/page/records/client/index.jsp"><i class="icon-trophy"></i>吉尼斯记录——&nbsp;&nbsp;物&nbsp;&nbsp;<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/page/records/client/index.jsp"><i class="icon-trophy"></i>吉尼斯记录——单位<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/page/records/client/index.jsp"><i class="icon-trophy"></i>吉尼斯记录——国家<i class="icon-trophy"></i></a></h5></li>
                        <li><h5><a href="${ctx}/page/records/client/index.jsp"><i class="icon-trophy"></i>吉尼斯记录——思维<i class="icon-trophy"></i></a></h5></li>
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
