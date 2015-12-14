<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../../include/client/import.jsp" %>

<input type="hidden" name="currentPage" id="currentPage" value="${pageBean.currentPage}"/>

<c:if test="${pageBean.allRow > 0 && pageBean.totalPage > 1}">
<div class="pagination pagination-centered">
    <ul>
        <c:choose>
    		<c:when test="${pageBean.currentPage > 1}">
    		<li>
    			<c:choose>
    			<c:when test="${!empty(categoryId)}">
    			<a href="${ctx}/mystery/index/category/${categoryId}/${pageBean.currentPage - 1 }.html">上一页</a>
    			</c:when>
    			<c:otherwise>
    			<a href="${ctx}/mystery/index/${pageBean.currentPage - 1 }.html">上一页</a>
    			</c:otherwise>
    			</c:choose>
    		</li>
    		</c:when>
    		<c:otherwise>
    		<li class="disabled"><a href="javascript:void(0);">上一页</a></li>
    		</c:otherwise>
    	</c:choose>
       
      	<c:forEach items="${pageBean.getShowPage()}" var="sp" varStatus="stat">
      		<c:choose>
      			<c:when test="${sp == pageBean.currentPage}">
      			<li class="active">
      				<a href="javascript:void(0);">${sp}</a>
      			</li>
      			</c:when>
      			<c:otherwise>
      			<li>
      				<c:choose>
	    			<c:when test="${!empty(categoryId)}">
	    			<a href="${ctx}/mystery/index/category/${categoryId}/${sp}.html">${sp}</a>
	    			</c:when>
	    			<c:otherwise>
	    			<a href="${ctx}/mystery/index/${sp}.html">${sp}</a>
	    			</c:otherwise>
	    			</c:choose>
      			</li>
      			</c:otherwise>
      		</c:choose>
      	</c:forEach>
           
        <c:choose>
          	<c:when test="${pageBean.totalPage > pageBean.currentPage}">
          	<li>
          		<c:choose>
    			<c:when test="${!empty(categoryId)}">
    			<a href="${ctx}/mystery/index/category/${categoryId}/${pageBean.currentPage + 1}.html">下一页</a>
    			</c:when>
    			<c:otherwise>
    			<a href="${ctx}/mystery/index/${pageBean.currentPage + 1}.html">下一页</a>
    			</c:otherwise>
    			</c:choose>
         	</li>
          	</c:when>
          	<c:otherwise>
          	<li class="disabled"><a href="javascript:void(0);">下一页</a></li>
          	</c:otherwise>
        </c:choose> 
        
    </ul>
</div>  
</c:if>
<c:if test="${pageBean.allRow == 0}">  
<div class="pagination pagination-centered">
	没有找到任何记录，我们将在近期推出,尽请期待..		
</div>
</c:if> 


