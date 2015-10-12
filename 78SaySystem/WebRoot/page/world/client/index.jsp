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
	            <li class="active">动物之最</li>
	        </ul>
	    </div><!--/container-->
	</div>
	<!-- 面包屑导航 E -->
  	
  	<!-- 内容 S -->
  	<div class="container portfolio-columns portfolio-responsive"> 	
	    <div class="row-fluid"> 
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/1.jpg" alt="" />
	            <div class="mask">
	                <h2>世界上最长的蛇</h2>
	                <p>印度尼西亚一家小公园展出了一条非常罕见的蛇，身长14.85米，体重447公斤，这是近100年来人类所发现的最长最大的蛇，也是目前世界上所知最长的蛇。 这条大蛇是在印尼西部苏门答腊...</p>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/2.jpg" alt="" />
	            <div class="mask">
	                <h2>世界上最小的脊椎动物</h2>
	                <p>生物学家在印度尼西亚苏门答腊岛的热带雨林中，发现了迄今世界最小的脊椎动物，一种袖珍鱼，其成年雌鱼的身长只有7.9毫米，相当于一只蚊子大小。看起来，天下之大，无奇不有，...</p>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/3.jpg" alt="" />
	            <div class="mask">
	                <h2>世界上最毒的蛇</h2>
	                <p>内陆太攀蛇是陆地上最毒的蛇。内陆太攀蛇的毒液使受试生物死亡一半所需的绝对量（LD50）只有0.021mg/kg，但排毒量达12.5mg40.0mg，比响尾蛇毒性强300倍，约相当于眼镜王蛇的20倍，与钩鼻...</p>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	    </div><!--/row-fluid-->
	
	    <div class="row-fluid"> 
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/4.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item</h2>
	                <p>At vero eos et accusamus et iusto odio dignissimos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/5.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item</h2>
	                <p>At vero eos et accusamus et iusto odio dignissimos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/6.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item</h2>
	                <p>At vero eos et accusamus et iusto odio dignissimos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	    </div><!--/row-fluid-->
	
	    <div class="row-fluid"> 
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/7.jpg" alt="" />
	            <div class="mask">
	                <h2>世界上最大的淡水鱼，1吨多重的黄貂鱼(组图)</h2>
	                <p>世界上有发现记录的淡水中的大鱼种类有20多种，这些生活在淡水中的鱼与他们的同类海洋鱼相比，不管是体积和重要都要逊色的多，那么世界上最大的淡水鱼是那类鱼种呢？目前已知最大的淡...</p>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/8.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item</h2>
	                <p>At vero eos et accusamus et iusto odio dignissimos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
	                <a href="portfolio_item.html" class="info">阅读更多</a>
	            </div>
	        </div>
	        <div class="view view-tenth span4">
	        	<img src="${ctx}/images/carousel/9.jpg" alt="" />
	            <div class="mask">
	                <h2>Portfolio Item</h2>
	                <p>At vero eos et accusamus et iusto odio dignissimos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
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
