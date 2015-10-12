<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  	
  	<!-- 首页内容 S -->
  	<div class="container">	
  		<div class="row-fluid margin-bottom-20">
	        <!-- 首页头条 S-->
	        <div class="span4">
				<div class="headline"><h3>头条</h3></div>
				<div id="myCarousel" class="carousel slide">
	                <div class="carousel-inner">
	                  <div class="item active">
	                    <img src="${ctx}/images/carousel/5.jpg" alt="" />
	                    <div class="carousel-caption">
	                      <p>Cras justo odio, dapibus ac facilisis in, egestas.</p>
	                    </div>
	                  </div>
	                  <div class="item">
	                    <img src="${ctx}/images/carousel/4.jpg" alt="" />
	                    <div class="carousel-caption">
	                      <p>Cras justo odio, dapibus ac facilisis in, egestas.</p>
	                    </div>
	                  </div>
	                  <div class="item">
	                    <img src="${ctx}/images/carousel/3.jpg" alt="" />
	                    <div class="carousel-caption">
	                      <p>Cras justo odio, dapibus ac facilisis in, egestas.</p>
	                    </div>
	                  </div>
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
				    <div class="active item">
				    	<div class="testimonial">
					    	<div class="testimonial-body">
					    		<p>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper.</p>
					       		<p>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc.</p>	
					       	</div>
					    	<div class="testimonial-author">
					    		<span class="arrow"></span>
					    		<span class="name">John Smith</span>, CEO, Pixel Ltd. 
					    	</div>
					   	</div>
				    </div><!--/carousel-inner-->
	
	                <!-- Item -->
				    <div class="item">
				    	<div class="testimonial">
					    	<div class="testimonial-body">
					    		<p>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc.</p>	
					    		<p>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper.</p>							       		
					       	</div>
					    	<div class="testimonial-author">
					    		<span class="arrow"></span>
					    		<span class="name">Lisa Cooper</span>, Art Director, Loop Inc.
					    	</div>
					   	</div>
				    </div><!--/item-->
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
                    <dl class="dl-horizontal">
                        <dt><a href="#"><img src="${ctx}/images/sliders/elastislide/6.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                    <dt><a href="#"><img src="${ctx}/images/sliders/elastislide/10.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                    <dt><a href="#"><img src="${ctx}/images/sliders/elastislide/11.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                   
                </div>
			</div>
	        <!-- 特别推荐 E-->
		</div>
		
		<!-- 种类内容 S -->
		<div class="row-fluid">
	    	<!-- 世界之最 S -->
	        <div class="headline"><h3>世界之最</h3></div>
	        <ul class="thumbnails">
	            <li class="span3">
	                <div class="thumbnail-style thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/images/carousel/9.jpg" alt="" /></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3><a href="#">Our Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/images/carousel/3.jpg" alt="" /></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3><a href="#">One More Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/images/carousel/4.jpg" alt="" /></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3><a href="#">Another Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style  thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/images/carousel/5.jpg" alt="" /></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3><a href="#">Huge Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                </div>
	            </li>
	        </ul>
	        <ul class="thumbnails">
	            <li class="span3">
	                <div class="thumbnail-style thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/images/carousel/9.jpg" alt="" /></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3><a href="#">Our Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/images/carousel/3.jpg" alt="" /></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3><a href="#">One More Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/images/carousel/4.jpg" alt="" /></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3><a href="#">Another Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style  thumbnail-kenburn">
	                    <div class="thumbnail-img">
	                        <div class="overflow-hidden"><img src="${ctx}/images/carousel/5.jpg" alt="" /></div>
	                        <a class="btn-more hover-effect" href="#">阅读更多 +</a>					
	                    </div>
	                    <h3><a href="#">Huge Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                </div>
	            </li>
	        </ul>
	        <!-- 世界之最 E -->
	    
	    	<!-- 吉尼斯纪录 S -->
	        <div class="headline"><h3>吉尼斯纪录</h3></div>
	        <ul class="thumbnails">
	            <li class="span3 thumbnail-style thumbnail-kenburn">
	                <div class="overflow-hidden"><img src="${ctx}/images/carousel/7.jpg" alt="" /></div>
	                <h3><a href="#">Our Work</a></h3>
	                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                <p><a class="btn-u btn-u-small" href="#">阅读更多</a></p>
	            </li>
	            <li class="span3 thumbnail-style thumbnail-kenburn">
	                <div class="overflow-hidden"><img src="${ctx}/images/carousel/10.jpg" alt="" /></div>
	                <h3><a href="#">Our Work</a></h3>
	                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                <p><a class="btn-u btn-u-small" href="#">阅读更多</a></p>
	            </li>
	            <li class="span3 thumbnail-style thumbnail-kenburn">
	                <div class="overflow-hidden"><img src="${ctx}/images/carousel/8.jpg" alt="" /></div>
	                <h3><a href="#">Our Work</a></h3>
	                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                <p><a class="btn-u btn-u-small" href="#">阅读更多</a></p>
	            </li>
	            <li class="span3 thumbnail-style thumbnail-kenburn">
	                <div class="overflow-hidden"><img src="${ctx}/images/carousel/6.jpg" alt="" /></div>
	                <h3><a href="#">Our Work</a></h3>
	                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
	                <p><a class="btn-u btn-u-small" href="#">阅读更多</a></p>
	            </li>
	        </ul>
	        <!-- 吉尼斯纪录 E -->
	
	    	<!-- 未解之谜 S -->
	        <div class="headline"><h3>未解之谜</h3></div>
	        <ul class="thumbnails">
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" data-rel="fancybox-button" title="Project #1" href="${ctx}/images/carousel/9.jpg">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/images/carousel/9.jpg" alt="" />
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3><a href="#">Our Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem. <a class="read-more" href="#">阅读更多</a></p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" data-rel="fancybox-button" title="Project #2" href="${ctx}/images/carousel/3.jpg">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/images/carousel/3.jpg" alt="" />
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3><a href="#">One More Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem. <a class="read-more" href="#">阅读更多</a></p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" data-rel="fancybox-button" title="Project #3" href="${ctx}/images/carousel/2.jpg">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/images/carousel/2.jpg" alt="" />
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3><a href="#">Another Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem. <a class="read-more" href="#">阅读更多</a></p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" data-rel="fancybox-button" title="Project #4" href="${ctx}/images/carousel/4.jpg">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/images/carousel/4.jpg" alt="" />
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3><a href="#">Huge Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem. <a class="read-more" href="#">阅读更多</a></p>
	                </div>
	            </li>
	        </ul>
	        <ul class="thumbnails">
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" data-rel="fancybox-button" title="Project #1" href="${ctx}/images/carousel/9.jpg">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/images/carousel/9.jpg" alt="" />
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3><a href="#">Our Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem. <a class="read-more" href="#">阅读更多</a></p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" data-rel="fancybox-button" title="Project #2" href="${ctx}/images/carousel/3.jpg">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/images/carousel/3.jpg" alt="" />
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3><a href="#">One More Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem. <a class="read-more" href="#">阅读更多</a></p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" data-rel="fancybox-button" title="Project #3" href="${ctx}/images/carousel/2.jpg">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/images/carousel/2.jpg" alt="" />
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3><a href="#">Another Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem. <a class="read-more" href="#">阅读更多</a></p>
	                </div>
	            </li>
	            <li class="span3">
	                <div class="thumbnail-style">
	                    <a class="fancybox-button zoomer" data-rel="fancybox-button" title="Project #4" href="${ctx}/images/carousel/4.jpg">
	                        <div class="overlay-zoom">	
	                            <img src="${ctx}/images/carousel/4.jpg" alt="" />
	                            <div class="zoom-icon"></div>					
	                        </div>												
	                    </a>
	                    <h3><a href="#">Huge Work</a></h3>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem. <a class="read-more" href="#">阅读更多</a></p>
	                </div>
	            </li>
	        </ul>
	        <!-- 未解之谜 E -->
	
	    	<!-- 天下奇葩 S -->
	        <div class="headline"><h3>天下奇葩</h3></div>
	        <ul class="thumbnails">
	            <li class="span4">
	                <div class="thumbnail thumbnail-kenburn">
	                    <div class="overflow-hidden"><img src="${ctx}/images/carousel/5.jpg" alt="" /></div>
	                    <div class="caption">
	                        <h3>Thumbnail label</h3>
	                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nullam nieh.</p>
	                        <p><a href="#" class="btn-u">阅读更多</a></p>
	                    </div>
	                </div>
	            </li>
	            <li class="span4">
	                <div class="thumbnail thumbnail-kenburn">
	                    <div class="overflow-hidden"><img src="${ctx}/images/carousel/6.jpg" alt="" /></div>
	                    <div class="caption">
	                        <h3>Thumbnail label</h3>
	                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nullam nieh.</p>
	                        <p><a href="#" class="btn-u">阅读更多</a></p>
	                    </div>
	                </div>
	            </li>
	            <li class="span4">
	                <div class="thumbnail thumbnail-kenburn">
	                    <div class="overflow-hidden"><img src="${ctx}/images/carousel/7.jpg" alt="" /></div>
	                    <div class="caption">
	                        <h3>Thumbnail label</h3>
	                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nullam nieh.</p>
	                        <p><a href="#" class="btn-u">阅读更多</a></p>
	                    </div>
	                </div>
	            </li>
	        </ul>
	        <!-- 天下奇葩 E -->                    
	
		</div>
		<!-- 种类内容 E -->
		
		<!-- 热文辣文 S -->
		<div class="row-fluid">
	    	<div class="span4">
				<div class="headline"><h3>热文辣文</h3></div>
	    		<div class="clearfix">
	    			<div class="desc">
	    				<h4>Fully Responsive</h4>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
	    			</div>
	    		</div>	
	    	</div>
	    	<div class="span4">
	    		<div class="headline"><h3>热文辣文</h3></div>
	    		<div class="clearfix">
	    			<div class="desc">
	    				<h4>HTML5 + CSS3</h4>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
	    			</div>
	    		</div>	
	    	</div>
	    	<div class="span4">
	    		<div class="headline"><h3>热文辣文</h3></div>
	    		<div class="clearfix">
	    			<div class="desc">
	    				<h4>Launch Ready</h4>
	                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
	    			</div>
	    		</div>	
	    	</div>			    
		</div>
		<!-- 热吻辣文 E -->
		
		<%@include file="../include/client/link.jsp" %>
  	</div>
  	<!-- 首页内容 E -->
  	
    <%@include file="../include/client/footer.jsp" %>
  </body>
</html>
