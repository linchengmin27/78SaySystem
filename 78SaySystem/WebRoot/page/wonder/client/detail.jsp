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
	
  </head>
  
  <body>
  	<%@include file="../../include/client/top.jsp" %>
  	
  	<!-- 面包屑导航 S -->
  	<div class="breadcrumbs margin-bottom-40">
		<div class="container">
			<h1 class="color-green pull-left">世界之最 </h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="${ctx}/index.html">首页</a> <span class="divider">/</span></li>
	            <li><a href="${ctx}/wonder/index.action">世界之最</a> <span class="divider">/</span></li>
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
	                        <a href="${ctx}/search/${t}.html">${t}</a>&nbsp;&nbsp;
	                        </c:forEach>
	                    </li>
	                </ul>
	                
	            	<blockquote class="hero">
	                    <small>${entity.abstract_}</small>
	                </blockquote>
	            	
	                ${chapter.content}
	                <%@include file="../../include/client/detail_ajax_pager.jsp" %>
	            </div>
	
				<hr />
	
	            <div id="ajaxSearchId">
	            
	            </div>
	        </div><!--/span9-->
	
	        <!-- Right Sidebar -->
	    	<div class="span3">
	        	<div class="posts">
		            <div class="headline"><h3>相关推荐</h3></div>
	                <c:forEach items="${relateArticles}" var="article">
	                <dl class="dl-horizontal">
	                    <dt><a href="${ctx}/wonder/detail.action?id=${article.id}"><img src="${ctx}/${article.logo}" alt="" /></a></dt>
	                    <dd>
	                        <p><a href="${ctx}/wonder/detail.action?id=${article.id}">${article.title}</a></p> 
	                    </dd>
	                </dl>
	                </c:forEach>
                </div>
	
	        	<div class="headline"><h3>标签</h3></div>
	            <ul class="unstyled inline blog-tags">
	            	<c:forEach items="${articleTags}" var="articleTag">
	            	<li><a href="${ctx}/search/${articleTag.name}.html"><i class="icon-tags"></i>${articleTag.name}</a></li>
	            	</c:forEach>
	            </ul>
	        </div><!--/span3-->
	    </div><!--/row-fluid-->        
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    <script type="text/javascript">
	    jQuery(document).ready(function() {
	        ajaxSearchComment(1);
	    });
	    
	    function ajaxSearchComment(page) {
	    	$("#ajaxSearchId").html("<img src='${ctx}/images/loading.gif'/>&nbsp;Loading...");
			var url = "${ctx}/comment/list.action";
			var data = {
					page: page,
					'article.id': '${entity.id}'
				};
			$.ajax({
	            type: "post",
	            data: data,
	            url: url,
	            dataType : 'text',
	            timeout : 60000,
	            success: function(result){
	        		$('#ajaxSearchId').html(result);
	        		addCommentValidation();
	            },
	            error: function(e) {
					alert("系统异常，请稍后重试");
				},
	        });
			
	    }
	    
	    function addCommentValidation() {
			var validate = $("#add_form").validate({
				 errorPlacement: function(error, element) { 
					 error.appendTo(element.parent());  
					 element.parent().parent().addClass("has-error");
					
				 },
				
				 submitHandler: function(form){
					 var url = "${ctx}/comment/add/done.action";
					 var data = $(form).serialize();
					 
					 $.ajax({
			            type: "post",
			            data: data,
			            url: url,
			            dataType : 'text',
			            timeout : 60000,
			            success: function(result){
			        		var res = eval("("+result+")");
			        		if(res[0].respCode == 0) {
			        			alert(res[0].respDesc);
			        			ajaxSearchComment(1);
			        		} else {
			        			alert(res[0].respDesc);
			        		}
			            },
			            error: function(e) {
							alert("系统异常，请稍后重试");
						},
			        });
				},
				
				rules: {
					"content": {
						required:true
					}
				 },
				 
				 messages:{
					"content": {
						required:'<span style="color:#d16e6c">请输入留笔内容!!!</span>'
					}
				 }
			});	
		
		}
	</script>
  </body>
</html>
