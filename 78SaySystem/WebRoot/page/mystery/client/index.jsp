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
	<link rel="stylesheet" href="${ctx}/plugins/portfolioSorting/css/sorting.css" /> 

  </head>
  
  <body>
  	<%@include file="../../include/client/top.jsp" %>
  	
  	<!-- 面包屑导航 S -->
  	<div class="breadcrumbs margin-bottom-40">
		<div class="container">
			<h1 class="color-green pull-left">未解之谜 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="index.html">首页</a> <span class="divider">/</span></li>
	            <li>未解之谜<span class="divider">/</span></li>
	            <li class="active">奇闻怪事</li>
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
	                	<li><a href="#" class="selected">所有</a></li>
	                	<li><a href="#" class="">奇闻</a></li>
	                	<li><a href="#" class="">宇宙</a></li>
	                	<li><a href="#" class="">自然</a></li>
	                	<li><a href="#" class="">考古</a></li>
	                	<li><a href="#" class="">科学</a></li>
	                	<li><a href="#" class="">历史</a></li>
	                	<li><a href="#" class="">UFO</a></li>
	                </ul>
	            </div>
	            
	            <ul class="portfolio recent-work clearfix"> 
	                <li data-id="id-1" class="ios" title="宇宙有没有尽头，探索宇宙的庐山真">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/2.jpg" alt="" /></em>
	                        <span>
	                            <strong>宇宙有没有尽头，探索宇宙的庐山真..</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-2" class="print" title="麻沸散是谁发明的?贡献太大了">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/3.jpg" alt="" /></em>
	                        <span>
	                            <strong>麻沸散是谁发明的?贡献太大了</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-3" class="ios">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/4.jpg" alt="" /></em>
	                        <span>
	                            <strong>孔子简介,孔子简介资料,孔子的名言</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-4" class="print">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/5.jpg" alt="" /></em>
	                        <span>
	                            <strong>麦哲伦星系,大麦哲伦星系是否有生命?</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-5" class="web">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/6.jpg" alt="" /></em>
	                        <span>
	                            <strong>白矮星,白矮星变成黑矮星要多少年?</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-6" class="web">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/7.jpg" alt="" /></em>
	                        <span>
	                            <strong>宋庆龄的资料,宋庆龄的资料简介,宋庆龄..</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-7" class="print">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/8.jpg" alt="" /></em>
	                        <span>
	                            <strong>王健林老婆是谁?</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-8" class="web">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/2.jpg" alt="" /></em>
	                        <span>
	                            <strong>春来江水绿如蓝的上一句是什么?</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-9" class="ios">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/9.jpg" alt="" /></em>
	                        <span>
	                            <strong>海兰珠和皇太极,海兰珠和皇太极..</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-10" class="ios">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/10.jpg" alt="" /></em>
	                        <span>
	                            <strong>金线莲的功效与作用,你知道金线莲..</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-11" class="web">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/5.jpg" alt="" /></em>
	                        <span>
	                            <strong>世界末日预言</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	                <li data-id="id-12" class="web">
	                    <a href="portfolio_item.html">
	                    	<em class="overflow-hidden"><img src="${ctx}/plugins/portfolioSorting/img/3.jpg" alt="" /></em>
	                        <span>
	                            <strong>全球十大最危险的地方，想去看看吗？</strong>
	                            <i style="font-style:normal">日期：2015-08-06 11:55:23</i>
	                        </span>
	                    </a>
	                </li>
	            </ul>
	        </div>   
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
	    </div><!--/row-fluid-->         
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
