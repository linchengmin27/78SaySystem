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

  </head>
  
  <body>
  	<%@include file="../include/client/top.jsp" %>
  	
  	<!-- 首页内容 S -->
  	<div class="container">	
  		<div class="row-fluid margin-bottom-20">
	        <!-- 首页头条 S-->
	        <div class="span4">
				<div class="headline"><h3>头条</h3></div>
				<div id="myCarousel" class="carousel slide">
	                <div class="carousel-inner">
	                  <c:forEach items="${headlinesArticles}" var="art" varStatus="st">
	                  <div class="item <c:if test="${st.index eq 1}">active</c:if>">
	                    <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 234px;width: 100%;max-width: 370px;" />
	                    <div class="carousel-caption">
	                      <p>
	                      	 <c:choose>
			             	<c:when test="${art.category.parent.id eq 1}">
				             	<a href="${ctx}/world/detail/${art.id}.html" title="${art.title}">${art.title}</a>
			             	</c:when>
			             	<c:when test="${art.category.parent.id eq 14}">
			             		<a href="${ctx}/records/detail/${art.id}.html" title="${art.title}">${art.title}</a>
			             	</c:when>
			             	<c:when test="${art.category.parent.id eq 21}">
			             		<a href="${ctx}/mystery/detail/${art.id}.html" title="${art.title}">${art.title}</a>
			             	</c:when>
			             	<c:when test="${art.category.parent.id eq 29}">
			             		<a href="${ctx}/wonder/detail/${art.id}.html" title="${art.title}">${art.title}</a>
			             	</c:when>
			             	</c:choose>
	                      </p>
	                    </div>
	                  </div>
	                  </c:forEach>
	                </div>
	                
	                <div class="carousel-arrow">
	                    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="icon-angle-left"></i></a>
	                    <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="icon-angle-right"></i></a>
	                </div>
				</div>
	        </div>
	        <!-- 首页头条 E-->
	        
	        <!-- 最新更新 S-->
	        <div class="span4">
				<div class="headline"><h3>最近更新</h3></div>
				<div id="testimonal_carousel" class="carousel slide">
				  <!-- Carousel items -->
				  <div class="carousel-inner">
				  	<c:forEach items="${lastestArticles}" var="art" varStatus="st">
				    <div class="<c:if test="${st.index eq 1}">active</c:if> item">
				    	<div class="testimonial">
					    	<div class="testimonial-body" style="line-height: 25px;">
					    		${art.content}
					       	</div>
					    	<div class="testimonial-author">
					    		<span class="arrow"></span>
					    		<span class="name">
			                    	<c:choose>
					             	<c:when test="${art.category.parent.id eq 1}">
						             	<a href="${ctx}/world/detail/${art.id}.html" title="${art.title}">
				                    		<c:choose>
				                    		<c:when test="${fn:length(art.title) <= 12}">
				                    		${art.title}
				                    		</c:when>
				                    		<c:otherwise>
				                    		${fn:substring(art.title, 0, 12)}..
				                    		</c:otherwise>
				                    		</c:choose>
				                    	</a>
					             	</c:when>
					             	<c:when test="${art.category.parent.id eq 14}">
					             		<a href="${ctx}/records/detail/${art.id}.html" title="${art.title}">
				                    		<c:choose>
				                    		<c:when test="${fn:length(art.title) <= 12}">
				                    		${art.title}
				                    		</c:when>
				                    		<c:otherwise>
				                    		${fn:substring(art.title, 0, 12)}..
				                    		</c:otherwise>
				                    		</c:choose>
				                    	</a>
					             	</c:when>
					             	<c:when test="${art.category.parent.id eq 21}">
					             		<a href="${ctx}/mystery/detail/${art.id}.html" title="${art.title}">
				                    		<c:choose>
				                    		<c:when test="${fn:length(art.title) <= 12}">
				                    		${art.title}
				                    		</c:when>
				                    		<c:otherwise>
				                    		${fn:substring(art.title, 0, 12)}..
				                    		</c:otherwise>
				                    		</c:choose>
				                    	</a>
					             	</c:when>
					             	<c:when test="${art.category.parent.id eq 29}">
					             		<a href="${ctx}/wonder/detail/${art.id}.html" title="${art.title}">
				                    		<c:choose>
				                    		<c:when test="${fn:length(art.title) <= 12}">
				                    		${art.title}
				                    		</c:when>
				                    		<c:otherwise>
				                    		${fn:substring(art.title, 0, 12)}..
				                    		</c:otherwise>
				                    		</c:choose>
				                    	</a>
					             	</c:when>
					             	</c:choose>
					    		</span> 
					    	</div>
					   	</div>
				    </div>
				    </c:forEach>
				  </div><!--/testimonal_carousel-->
	              
	              <!-- Carousel nav -->						  
	              <div class="testimonal-arrow">
	                  <a class="icon-angle-right" href="#testimonal_carousel" data-slide="next"></a> 
	                  <a class="icon-angle-left" href="#testimonal_carousel" data-slide="prev"></a>	
	              </div>
				</div>			
			</div>
	        <!-- 最新更新 E-->
	        <!-- 特别推荐 S-->
	        <div class="span4">
                <div class="posts">
                    <div class="headline"><h3>特别推荐</h3></div>
                    <c:forEach items="${featuredArticles}" var="art">
                    <dl class="dl-horizontal" >
                        <dt style="width: 100px;padding-right: 10px;"><img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 56px;width: 100%;max-width: 56px;" /></dt>
                        <dd>
                            <p>
                            	<c:choose>
				             	<c:when test="${art.category.parent.id eq 1}">
					             	<a href="${ctx}/world/detail/${art.id}.html" title="${art.title}">
			                    		${art.title}
			                    	</a>
				             	</c:when>
				             	<c:when test="${art.category.parent.id eq 14}">
				             		<a href="${ctx}/records/detail/${art.id}.html" title="${art.title}">
			                    		${art.title}
			                    	</a>
				             	</c:when>
				             	<c:when test="${art.category.parent.id eq 21}">
				             		<a href="${ctx}/mystery/detail/${art.id}.html" title="${art.title}">
			                    		${art.title}
			                    	</a>
				             	</c:when>
				             	<c:when test="${art.category.parent.id eq 29}">
				             		<a href="${ctx}/wonder/detail/${art.id}.html" title="${art.title}">
			                    		${art.title}
			                    	</a>
				             	</c:when>
				             	</c:choose>
                            </p> 
                            <p>
                            	<c:choose>
	                    		<c:when test="${fn:length(art.abstract_) <= 30}">
	                    		${art.abstract_}
	                    		</c:when>
	                    		<c:otherwise>
	                    		${fn:substring(art.abstract_, 0, 30)}..
	                    		</c:otherwise>
	                    		</c:choose>
                            </p>
                            
                        </dd>
                    </dl>
                    </c:forEach>
                </div>
			</div>
	        <!-- 特别推荐 E-->
		</div>
		
		<!-- 种类内容 S -->
		<div class="row-fluid">
	    	<!-- 世界之最 S -->
	    	<c:if test="${category1Articles.size() > 0}">
	        <div class="headline"><h3>世界之最</h3></div>
	        <ul class="thumbnails">
	        	<c:forEach items="${category1Articles}" var="art" begin="0" end="3">
	            <li class="span3">
	                <div class="thumbnail-style thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 150px;width: 100%;max-width: 270px;"/></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3 title="${art.title}">
	                    	<a href="${ctx}/world/detail/${art.id}.html" title="${art.title}">
	                    		<c:choose>
	                    		<c:when test="${fn:length(art.title) <= 10}">
	                    		${art.title}
	                    		</c:when>
	                    		<c:otherwise>
	                    		${fn:substring(art.title, 0, 10)}..
	                    		</c:otherwise>
	                    		</c:choose>
	                    	</a>
	                    </h3>
	                    <p>
	                    	<c:choose>
                    		<c:when test="${fn:length(art.abstract_) <= 50}">
                    		${art.abstract_}
                    		</c:when>
                    		<c:otherwise>
                    		${fn:substring(art.abstract_, 0, 50)}..
                    		</c:otherwise>
                    		</c:choose>
	                    </p>
	                </div>
	            </li>
	            </c:forEach>
	        </ul>
	        <ul class="thumbnails">
	            <c:forEach items="${category1Articles}" var="art" begin="4" end="7">
	            <li class="span3">
	                <div class="thumbnail-style thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 150px;width: 100%;max-width: 270px;"/></div>
	                        <a class="btn-more hover-effect" href="${ctx}/records/detail/${art.id}.html">阅读更多 +</a>					
	                    </div>
	                    <h3 title="${art.title}">
	                    	<a href="${ctx}/world/detail/${art.id}.html" title="${art.title}">
	                    		<c:choose>
	                    		<c:when test="${fn:length(art.title) <= 10}">
	                    		${art.title}
	                    		</c:when>
	                    		<c:otherwise>
	                    		${fn:substring(art.title, 0, 10)}..
	                    		</c:otherwise>
	                    		</c:choose>
	                    	</a>
	                    </h3>
	                    <p>
	                    	<c:choose>
                    		<c:when test="${fn:length(art.abstract_) <= 50}">
                    		${art.abstract_}
                    		</c:when>
                    		<c:otherwise>
                    		${fn:substring(art.abstract_, 0, 50)}..
                    		</c:otherwise>
                    		</c:choose>
	                    </p>
	                </div>
	            </li>
	            </c:forEach>
	        </ul>
	        </c:if>
	        <!-- 世界之最 E -->
	    
	    	<!-- 吉尼斯纪录 S -->
	    	<c:if test="${category14Articles.size() > 0}">
	        <div class="headline"><h3>吉尼斯纪录</h3></div>
	        <ul class="thumbnails">
	            <c:forEach items="${category14Articles}" var="art">
	            <li class="span3 thumbnail-style thumbnail-kenburn">
	                <div class="overflow-hidden"><img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 150px;width: 100%;max-width: 270px;"/></div>
	                <h3 title="${art.title}">
	                	<a href="${ctx}/records/detail/${art.id}.html">
	                		<c:choose>
                    		<c:when test="${fn:length(art.title) <= 10}">
                    		${art.title}
                    		</c:when>
                    		<c:otherwise>
                    		${fn:substring(art.title, 0, 10)}..
                    		</c:otherwise>
                    		</c:choose>
	                	</a>
	                </h3>
	                <p>
	                	<c:choose>
                   		<c:when test="${fn:length(art.abstract_) <= 50}">
                   		${art.abstract_}
                   		</c:when>
                   		<c:otherwise>
                   		${fn:substring(art.abstract_, 0, 50)}..
                   		</c:otherwise>
                   		</c:choose>
	                </p>
	                <p><a class="btn-u btn-u-small" href="${ctx}/records/detail/${art.id}.html">阅读更多</a></p>
	            </li>
	            </c:forEach>
	        </ul>
	        </c:if>
	        <!-- 吉尼斯纪录 E -->
	
	    	<!-- 未解之谜 S -->
	    	<c:if test="${category21Articles.size() > 0}">
	        <div class="headline"><h3>未解之谜</h3></div>
	        <ul class="thumbnails">
	            <c:forEach items="${category21Articles}" var="art" begin="0" end="3">
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" title="Project #1" href="${ctx}/mystery/detail/${art.id}.html">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 150px;width: 100%;max-width: 270px;"/>
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3 title="${art.title}">
	                    	<a href="${ctx}/mystery/detail/${art.id}.html">
	                    		<c:choose>
	                    		<c:when test="${fn:length(art.title) <= 10}">
	                    		${art.title}
	                    		</c:when>
	                    		<c:otherwise>
	                    		${fn:substring(art.title, 0, 10)}..
	                    		</c:otherwise>
	                    		</c:choose>
	                    	</a>
	                    </h3>
	                    <p>
	                    	<c:choose>
	                   		<c:when test="${fn:length(art.abstract_) <= 50}">
	                   		${art.abstract_}
	                   		</c:when>
	                   		<c:otherwise>
	                   		${fn:substring(art.abstract_, 0, 50)}..
	                   		</c:otherwise>
	                   		</c:choose>
	                    	<a class="read-more" href="${ctx}/mystery/detail/${art.id}.html">阅读更多</a>
	                    </p>
	                </div>
	            </li>
	            </c:forEach>
	        </ul>
	        <ul class="thumbnails">
	            <c:forEach items="${category21Articles}" var="art" begin="4" end="7">
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" title="Project #1" href="${ctx}/mystery/detail/${art.id}.html">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/${art.logo}" alt="${art.title}" style="height: 150px;width: 100%;max-width: 270px;"/>
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3 title="${art.title}">
	                    	<a href="${ctx}/mystery/detail/${art.id}.html">
	                    		<c:choose>
	                    		<c:when test="${fn:length(art.title) <= 10}">
	                    		${art.title}
	                    		</c:when>
	                    		<c:otherwise>
	                    		${fn:substring(art.title, 0, 10)}..
	                    		</c:otherwise>
	                    		</c:choose>
	                    	</a>
	                    </h3>
	                    <p>
	                    	<c:choose>
	                   		<c:when test="${fn:length(art.abstract_) <= 50}">
	                   		${art.abstract_}
	                   		</c:when>
	                   		<c:otherwise>
	                   		${fn:substring(art.abstract_, 0, 50)}..
	                   		</c:otherwise>
	                   		</c:choose>
	                    	<a class="read-more" href="${ctx}/mystery/detail/${art.id}.html">阅读更多</a>
	                    </p>
	                </div>
	            </li>
	            </c:forEach>
	        </ul>
	        </c:if>
	        <!-- 未解之谜 E -->
	
	    	<!-- 天下奇葩 S -->
	    	<c:if test="${category29Articles.size() > 0}">
	        <div class="headline"><h3>天下奇葩</h3></div>
	        <ul class="thumbnails">
	            <c:forEach items="${category29Articles}" var="art">
	            <li class="span4">
	                <div class="thumbnail thumbnail-kenburn">
	                    <div class="overflow-hidden"><img src="${ctx}/${art.logo}" alt="${art.title}" style="height:227px; width: 100%;max-width: 360px;"/></div>
	                    <div class="caption">
	                        <h3 title="${art.title}">
	                        	<c:choose>
	                    		<c:when test="${fn:length(art.title) <= 12}">
	                    		${art.title}
	                    		</c:when>
	                    		<c:otherwise>
	                    		${fn:substring(art.title, 0, 12)}..
	                    		</c:otherwise>
	                    		</c:choose>
	                        </h3>
	                        <p>
	                        	<c:choose>
		                   		<c:when test="${fn:length(art.abstract_) <= 50}">
		                   		${art.abstract_}
		                   		</c:when>
		                   		<c:otherwise>
		                   		${fn:substring(art.abstract_, 0, 50)}..
		                   		</c:otherwise>
		                   		</c:choose>
	                        </p>
	                        <p><a href="${ctx}/wonder/detail/${art.id}.html" class="btn-u">阅读更多</a></p>
	                    </div>
	                </div>
	            </li>
	           </c:forEach>
	           
	        </ul>
	        </c:if>
	        <!-- 天下奇葩 E -->                    
	
		</div>
		<!-- 种类内容 E -->
		
		<%@include file="../include/client/link.jsp" %>
  	</div>
  	<!-- 首页内容 E -->
  	
    <%@include file="../include/client/footer.jsp" %>
  </body>
</html>
