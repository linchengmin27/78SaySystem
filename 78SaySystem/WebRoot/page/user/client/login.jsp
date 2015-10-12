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
  	
  	<!-- 内容 S -->
  	<div class="body">
		<!-- 面包屑导航 S -->
	  	<div class="breadcrumbs margin-bottom-40">
			<div class="container">
				<h1 class="color-green pull-left">会员登录 </h1>
		        <ul class="pull-right breadcrumb">
		            <li><a href="${ctx}/page/index/index.jsp">首页</a> <span class="divider">/</span></li>
		            <li class="active">会员登录</li>
		        </ul>
		    </div><!--/container-->
		</div>
		<!-- 面包屑导航 E -->
	
		<div class="container">		
			<div class="row-fluid margin-bottom-10">
	        	<form class="log-page" />
		            <h3>78Say欢迎您</h3>    
		            <div class="input-prepend">
		                <span class="add-on"><i class="icon-user"></i></span>
		                <input class="input-xlarge" type="text" placeholder="会员账号" />
		            </div>
		            <div class="input-prepend">
		                <span class="add-on"><i class="icon-lock"></i></span>
		                <input class="input-xlarge" type="text" placeholder="会员密码" />
		            </div>
		            <div class="controls form-inline">
		                <label class="checkbox"><input type="checkbox" /> 记住密码</label>
		                <button class="btn-u pull-right" type="submit">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
		            </div>
		            <hr />
		            <h4>忘记密码 ?</h4>
		            <p>不用担心, <a class="color-green" href="#">点击这里</a> 去重置自己的密码.</p>
		        </form>
	        </div><!--/row-fluid-->
	        <div class="row-fluid margin-bottom-10"></div>
	        <div class="row-fluid margin-bottom-10"></div>
	        <div class="row-fluid margin-bottom-10"></div>
	        <div class="row-fluid margin-bottom-10"></div>
	        <div class="row-fluid margin-bottom-10"></div>
	        <div class="row-fluid margin-bottom-10"></div>
	        <div class="row-fluid margin-bottom-10"></div>
		</div><!--/container-->		
	</div>
	<!-- 内容 E -->
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
