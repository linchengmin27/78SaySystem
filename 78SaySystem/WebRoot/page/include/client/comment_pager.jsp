<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="import.jsp" %>

<input type="hidden" name="currentPage" id="currentPage" value="${pageBean.currentPage}"/>

<c:if test="${pageBean.allRow > 0 && pageBean.totalPage > 1}">
<div class="pagination pagination-centered">
    <ul>
        <c:choose>
    		<c:when test="${pageBean.currentPage > 1}">
    		<li><a href="javascript:ajaxSearchComment(${pageBean.currentPage - 1 });">上一页</a></li>
    		</c:when>
    		<c:otherwise>
    		<li class="disabled"><a href="javascript:void(0);">上一页</a></li>
    		</c:otherwise>
    	</c:choose>
       
      	<c:forEach items="${pageBean.getShowPage()}" var="sp" varStatus="stat">
      		<c:choose>
      			<c:when test="${sp == pageBean.currentPage}">
      			<li class="active"><a href="javascript:void(0);">${sp}</a></li>
      			</c:when>
      			<c:otherwise>
      			<li><a href="javascript:ajaxSearchComment(${sp});">${sp}</a></li>
      			</c:otherwise>
      		</c:choose>
      	</c:forEach>
           
        <c:choose>
          	<c:when test="${pageBean.totalPage > pageBean.currentPage}">
          	<li><a href="javascript:ajaxSearchComment(${pageBean.currentPage + 1 });">下一页</a></li>
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
	没有对于该文章的评论，期待您的加入..		
</div>
</c:if> 


