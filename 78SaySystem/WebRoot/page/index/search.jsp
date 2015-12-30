<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../include/client/import.jsp" %>

<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->  
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>78Say奇葩说-展示全球世界之最、吉尼斯纪录、未解之谜等各类奇葩资讯网</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="奇葩说,世界之最,吉尼斯纪录,未解之谜">
	<meta http-equiv="description" content="78Say奇葩说-展示全球世界之最、吉尼斯纪录、未解之谜等各类奇葩资讯网,我们将提供更多更全的奇葩资讯供您阅读。">
	<%@include file="../include/client/style.jsp" %>
	
	<script type="text/javascript">
	function ajaxSearch(page) {
		var key = '${key}';
		var url = basePath + '/search/'+ page +'/' + key + '.html';
		window.location.href = url;
	}
	</script>
</head> 

<body>
	<%@include file="../include/client/top.jsp" %>

	<!--=== Breadcrumbs ===-->
	<div class="row-fluid breadcrumbs margin-bottom-40">
		<div class="container">
	        <h1 class="pull-left">搜索结果</h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="${ctx}/index.html">首页</a> <span class="divider">/</span></li>
	            <li class="active">搜索</li>
	        </ul>
	    </div><!--/container-->
	</div><!--/breadcrumbs-->
	<!--=== End Breadcrumbs ===-->

	<!--=== Content Part ===-->
	<div class="container">		
	    <!-- Search Result -->
	    <div class="row-fluid search-page">
	        <h3>找到${allRow}匹配信息..</h3>
	
	        <div class="alert alert-info alert-block">
	            <button data-dismiss="alert" class="close" type="button">×</button>
	            <h4>友情提示!</h4>
	            当前版本系统的搜索为全文性索引，支持搜索全站性文章的标题、关键性标签，暂不支持分词，请勿一次性搜索多个关键字，我们将在后续的版本中进行优化，最后感谢您光临78Say奇葩说网站，我们将继续为您提供更多、更好、更奇葩的文章，供您阅读！！！
	        </div>        
	
			<div class="row-fluid">
			<c:forEach items="${pageBean.list}" var="art" begin="0" end="1" varStatus="st">
	          <c:if test="${st.index eq 0}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	             	<c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	          <c:if test="${st.index eq 1}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	       </c:forEach>
	       </div>
	       
	       <div class="row-fluid">
			<c:forEach items="${pageBean.list}" var="art" begin="2" end="3" varStatus="st">
	          <c:if test="${st.index eq 2}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	          <c:if test="${st.index eq 3}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	       </c:forEach>
	       </div>
	       
	       <div class="row-fluid">
			<c:forEach items="${pageBean.list}" var="art" begin="4" end="5" varStatus="st">
	          <c:if test="${st.index eq 4}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	          <c:if test="${st.index eq 5}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	       </c:forEach>
	       </div>
	       
	       <div class="row-fluid">
			<c:forEach items="${pageBean.list}" var="art" begin="6" end="7" varStatus="st">
	          <c:if test="${st.index eq 6}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	          <c:if test="${st.index eq 7}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	       </c:forEach>
	       </div>
	       
	       <div class="row-fluid">
			<c:forEach items="${pageBean.list}" var="art" begin="8" end="9" varStatus="st">
	          <c:if test="${st.index eq 8}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	          <c:if test="${st.index eq 9}">
	          <div class="span6 booking-blocks">
	             <div class="pull-left booking-img">
	                <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 95px;"/>
	             </div>
	             <div style="display: inline;">
	                <c:choose>
	             	<c:when test="${art.category.parent.id eq 1}">
	             	<h2><a href="${ctx}/world/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/world/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 14}">
	             	<h2><a href="${ctx}/records/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/records/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 21}">
	             	<h2><a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/mystery/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	<c:when test="${art.category.parent.id eq 29}">
	             	<h2><a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">${art.title}</a></h2>
	             	<p>${art.abstract_}<a href="${ctx}/wonder/detail/${art.id}.html" target="_blank">阅读更多</a></p>
	             	</c:when>
	             	</c:choose>
	             </div>
	          </div>
	          </c:if>
	       </c:forEach>
	       </div>
	       <%@include file="../include/client/ajax_pager.jsp" %>
	    </div><!--/row-fluid-->
	    <!-- //End Search Result -->
	</div><!--/container-->		
	<!--=== End Content Part ===-->

	<%@include file="../include/client/footer.jsp" %>
</body>
</html> 