<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
                        <li>
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">世界之最
                                <b class="caret"></b>                            
                            </a>
                            <ul class="dropdown-menu">
                            	<li><a href="${ctx}/page/world/client/index.jsp">所有</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">动物之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">植物之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">人类之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">科技之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">自然之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">机械之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">文物之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">艺术之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">娱乐之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">建筑之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">商业之最</a></li>
                                <li><a href="${ctx}/page/world/client/index.jsp">军事之最</a></li>
                            </ul>
                            <b class="caret-out"></b>                        
                        </li>
                        <li>
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">吉尼斯纪录
                                <b class="caret"></b>                            
                            </a>
                            <ul class="dropdown-menu">
                            	<li><a href="${ctx}/page/records/client/index.jsp">所有</a></li>
                                <li><a href="${ctx}/page/records/client/index.jsp">人</a></li>
                                <li><a href="${ctx}/page/records/client/index.jsp">事</a></li>
                                <li><a href="${ctx}/page/records/client/index.jsp">物</a></li>
                                <li><a href="${ctx}/page/records/lient/index.jsp">单位</a></li>
                                <li><a href="${ctx}/page/records/client/index.jsp">国家</a></li>
                                <li><a href="${ctx}/page/records/client/index.jsp">思维</a></li>
                            </ul>
                            <b class="caret-out"></b>                        
                        </li>
                        <li>
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">未解之谜
                                <b class="caret"></b>                            
                            </a>
                            <ul class="dropdown-menu">
                            	<li><a href="${ctx}/page/mystery/client/index.jsp">所有</a></li>
                                <li><a href="${ctx}/page/mystery/client/index.jsp">奇闻怪事</a></li>
                                <li><a href="${ctx}/page/mystery/client/index.jsp">宇宙奥秘</a></li>
                                <li><a href="${ctx}/page/mystery/client/index.jsp">自然之谜</a></li>
                                <li><a href="${ctx}/page/mystery/client/index.jsp">考古发现</a></li>
                                <li><a href="${ctx}/page/mystery/client/index.jsp">科学探秘</a></li>
                                <li><a href="${ctx}/page/mystery/client/index.jsp">历史趣闻</a></li>
                                <li><a href="${ctx}/page/mystery/client/index.jsp">UFO探秘</a></li>
                            </ul>
                            <b class="caret-out"></b>                        
                        </li>
                        <li>
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">天下奇葩
                            	<b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="${ctx}/page/wonder/client/news_index.jsp">奇葩新闻</a></li>
                                <li><a href="${ctx}/page/wonder/client/picture_index.jsp">奇葩图片</a></li>
                            </ul>
                            <b class="caret-out"></b>                        
                        </li>
                        <li>
                            <a href="${ctx}/page/article/client/index.jsp" class="dropdown-toggle">热文辣文</a>
                            <b class="caret-out"></b>                        
                        </li>
                        <li>
                            <a href="${ctx}/page/contactus/index.jsp" class="dropdown-toggle">联系我们</a>
                            <b class="caret-out"></b>                        
                        </li>
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
