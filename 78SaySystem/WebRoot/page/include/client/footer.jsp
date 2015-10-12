<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!-- 底部版权 S -->
<div class="copyright">
	<div class="container">
		<div class="row-fluid">
			<div class="span8">
				<p></p>						
	            <p>网站声明：本站所收录所有信息都来自于网上资源，仅供阅读，如有侵权，麻烦联系<a href="${ctx}/page/contactus/index.jsp">联系我们</a>。</p>
			</div>
			<div class="span4">	
				<a href="${ctx}/page/index/index.jsp"><img id="logo-footer" src="${ctx}/images/logo.png" class="pull-right" alt="" /></a>
			</div>
		</div>
	</div>
</div>
<!-- 底部版权 E -->

<!-- JS Global Compulsory -->			
<script type="text/javascript" src="${ctx}/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${ctx}/js/modernizr.custom.js"></script>		
<script type="text/javascript" src="${ctx}/plugins/bootstrap/js/bootstrap.min.js"></script>	
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="${ctx}/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="${ctx}/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="${ctx}/plugins/parallax-slider/js/jquery.cslider.js"></script> 
<script type="text/javascript" src="${ctx}/plugins/back-to-top.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="${ctx}/js/app.js"></script>
<script type="text/javascript" src="${ctx}/js/pages/index.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        App.initSliders();
        Index.initParallaxSlider();
    });
</script>
