<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../include/client/import.jsp" %>

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
	<%@include file="../include/client/style.jsp" %>

  </head>
  
  <body>
  	<%@include file="../include/client/top.jsp" %>
  	
  	<!-- 面包屑导航 S -->
  	<div class="breadcrumbs margin-bottom-40">
		<div class="container">
	        <h1 class="color-green pull-left">联系我们</h1>
	        <ul class="pull-right breadcrumb">
	            <li><a href="index.html">首页</a> <span class="divider">/</span></li>
	            <li class="active">联系我们</li>
	        </ul>
	    </div><!--/container-->
	</div>
	<!-- 面包屑导航 E -->
  	
  	<!-- 内容 S -->
  	<div class="container">		
		<div class="row-fluid">
			<div class="span9">
	            <p>在此，先感谢您光临本网站，如果您对于我们网站有什么建议、意见的话，您可以填写下下面的相关信息，写下您的意见和看法，我们会针对于您的建议/意见完善网站中的不足。</p><br />
				<form />
	                <label>称呼</label>
	                <input type="text" class="span7" />
	                <label>邮箱 <span class="color-red">*</span></label>
	                <input type="text" class="span7" />
	                <label>QQ <span class="color-red"></span></label>
	                <input type="text" class="span7" />
	                <label>留言内容</label>
	                <textarea rows="8" class="span10"></textarea>
	                <p><button type="submit" class="btn-u">发送留言</button></p>
	            </form>
	        </div><!--/span9-->
	
	        <div class="span3">
	            <!-- Contacts -->
	            <div class="headline"><h3>联系</h3></div>
	            <ul class="unstyled who margin-bottom-20">
	                <li><a href="#"><i class="icon-home"></i>福建省厦门市湖里区洪塘社100号</a></li>
	                <li><a href="#"><i class="icon-envelope-alt"></i>linchengmin27@sina.com</a></li>
	                <li><a href="#"><i class="icon-phone-sign"></i>152-5926-9857</a></li>
	                <li><a href="#"><i class="icon-user-md"></i>林先生/小林</a></li>
	                <li><a href="#"><i class="icon-globe"></i>http://www.78say.com</a></li>
	            </ul>
	
	            
	        </div><!--/span3-->        
	    </div><!--/row-fluid-->  
	    
	    <%@include file="../include/client/link.jsp" %>      
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../include/client/footer.jsp" %>
  </body>
</html>
