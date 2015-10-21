<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="import.jsp" %>

<input type="hidden" name="currentPage" id="currentPage" value="${pageBean.currentPage}"/>

<c:if test="${chapterPageBean.allRow > 0 && chapterPageBean.totalPage > 1}">
<div class="pagination pagination-centered">
    <ul>
        <c:choose>
    		<c:when test="${chapterPageBean.currentPage > 1}">
    		<li><a href="javascript:ajaxSearch(${chapterPageBean.currentPage - 1 });">上一页</a></li>
    		</c:when>
    		<c:otherwise>
    		<li class="disabled"><a href="javascript:void(0);">上一页</a></li>
    		</c:otherwise>
    	</c:choose>
       
      	<c:forEach items="${chapterPageBean.getShowPage()}" var="sp" varStatus="stat">
      		<c:choose>
      			<c:when test="${sp == chapterPageBean.currentPage}">
      			<li class="active"><a href="javascript:void(0);">${sp}</a></li>
      			</c:when>
      			<c:otherwise>
      			<li><a href="javascript:ajaxSearch(${sp});">${sp}</a></li>
      			</c:otherwise>
      		</c:choose>
      	</c:forEach>
           
        <c:choose>
          	<c:when test="${chapterPageBean.totalPage > chapterPageBean.currentPage}">
          	<li><a href="javascript:ajaxSearch(${chapterPageBean.currentPage + 1 });">下一页</a></li>
          	</c:when>
          	<c:otherwise>
          	<li class="disabled"><a href="javascript:void(0);">下一页</a></li>
          	</c:otherwise>
        </c:choose> 
        
    </ul>
</div>  
</c:if>


