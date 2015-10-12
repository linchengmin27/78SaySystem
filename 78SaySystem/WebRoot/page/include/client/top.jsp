<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="import.jsp" %>

<!-- 样式切换 S -->
<!--
<i class="style-switcher-btn icon-cogs"></i>
<div class="style-switcher">
    <div class="theme-close"><i class="icon-remove"></i></div>
    <div class="theme-heading">主题颜色</div>
    <ul class="unstyled">
        <li class="theme-default theme-active" data-style="default" data-header="light"></li>
        <li class="theme-blue" data-style="blue" data-header="light"></li>
        <li class="theme-orange" data-style="orange" data-header="light"></li>
        <li class="theme-red" data-style="red" data-header="light"></li>
        <li class="theme-light" data-style="light" data-header="light"></li>
    </ul>
</div>
-->
<!-- 样式切换 E -->

<!-- 顶部 S -->
<div class="top">
    <div class="container">     
        <ul class="loginbar pull-right">
            <%--
            <li><a href="${ctx}/page/user/client/login.jsp" class="login-btn">登录</a></li>  
            <li class="devider">&nbsp;</li>
            <li><a href="${ctx}/page/user/client/register.jsp" class="login-btn">注册</a></li> 
        	--%>
        	<li>78Say，欢迎您</li>
        </ul>
    </div>      
</div>
<!-- 顶部 E -->

<!-- 导航 S -->
<div class="header">               
    <div class="container"> 
        <!-- Logo -->       
        <div class="logo" style="top: -15px;left: -10px;">                                             
            <a href="${ctx}/page/index/index.jsp"><img id="logo-header" src="${ctx}/images/logo.png" alt="78Say奇葩说"/></a>
        </div><!-- /logo -->        
                                    
        <!-- Menu -->       
        <div class="navbar">                                
            <div class="navbar-inner">                                  
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a><!-- /nav-collapse -->                                  
                <div class="nav-collapse collapse">                                     
                    <ul class="nav top-2">
                        <li class="active">
                            <a href="${ctx}/page/index/index.jsp" class="dropdown-toggle">首页</a>
                            <b class="caret-out"></b>                        
                        </li>
                        
                        <c:forEach items="${sessionScope.categoryMap}" var="parent">
                        <li>
                        	<c:if test="${parent.value.size() > 0}">
                        	<a href="" class="dropdown-toggle" data-toggle="dropdown">${parent.key.name}
                                <b class="caret"></b>                            
                            </a>
                            <ul class="dropdown-menu">
                            	<c:forEach items="${parent.value}" var="children">
                            	<li><a href="${children.url}">${children.name}</a></li>
                            	</c:forEach>
                            </ul>
                        	</c:if>
                        	<c:if test="${parent.value.size() eq 0}">
                        	<a href="${parent.key.url}" class="dropdown-toggle">${parent.key.name}</a>
                        	</c:if>
                            <b class="caret-out"></b>                        
                        </li>
                        </c:forEach>
                        <li><a class="search"><i class="icon-search search-btn"></i></a></li>                               
                    </ul>
                    <div class="search-open">
                        <div class="input-append">
                            <form action="${ctx}/page/index/search.jsp" method="post"/>
                                <input type="text" class="span3" placeholder="请输入您要搜索的关键字" />
                                <button type="submit" class="btn-u">Go</button>
                            </form>
                        </div>
                    </div>
                </div><!-- /nav-collapse -->                                
            </div><!-- /navbar-inner -->
        </div><!-- /navbar -->                          
    </div><!-- /container -->               
</div>
<!-- 导航 E -->
