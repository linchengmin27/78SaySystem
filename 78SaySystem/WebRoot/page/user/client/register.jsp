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
				<h1 class="color-green pull-left">会员注册 </h1>
		        <ul class="pull-right breadcrumb">
		            <li><a href="${ctx}/page/index/index.jsp">首页</a> <span class="divider">/</span></li>
		            <li class="active">会员注册</li>
		        </ul>
		    </div><!--/container-->
		</div>
		<!-- 面包屑导航 E -->
	
		<div class="container">		
			<div class="row-fluid margin-bottom-10">
	        	<form class="reg-page" />
	            	<h3>注册一个新的账号</h3>
	                <div class="controls">    
	                    <label>会员账户</label>
	                    <input type="text" class="span12" />
	                    <label>会员昵称</label>
	                    <input type="text" class="span12" />
	                </div>
	                <div class="controls">    
	                    <label>会员密码</label>
	                    <input type="text" class="span12" />
	                    <label>确认密码</label>
	                    <input type="text" class="span12" />
	                </div>
	                <div class="controls form-inline">
	                    <label class="checkbox"><input type="checkbox" />&nbsp; 我已阅读<a href="">用户使用协议</a></label>
	                    <button class="btn-u pull-right" type="submit">注&nbsp;&nbsp;&nbsp;&nbsp;册</button>
	                </div>
	                <hr />
					<p>已经注册过? 点击 <a href="${ctx}/page/user/client/login.jsp" class="color-green">登录</a>，马上开始快乐的78Say之旅。</p>
	            </form>
	        </div><!--/row-fluid-->
		</div><!--/container-->		
	</div>
	<!-- 内容 E -->
  	
    <%@include file="../../include/client/footer.jsp" %>
    
  </body>
</html>
