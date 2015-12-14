<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="../../include/client/import.jsp" %>

<input type="hidden" name="currentPage" id="currentPage" value="${pageBean.currentPage}"/>

<c:if test="${chapterPageBean.allRow > 0 && chapterPageBean.totalPage > 1}">
<div class="pagination pagination-centered">
    <ul>
        <c:choose>
    		<c:when test="${chapterPageBean.currentPage > 1}">
    		<li><a href="${ctx}/mystery/detail/${entity.id}/${chapterPageBean.currentPage - 1 }.html">上一页</a></li>
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
      			<li><a href="${ctx}/mystery/detail/${entity.id}/${sp}.html">${sp}</a></li>
      			</c:otherwise>
      		</c:choose>
      	</c:forEach>
           
        <c:choose>
          	<c:when test="${chapterPageBean.totalPage > chapterPageBean.currentPage}">
          	<li><a href="${ctx}/mystery/detail/${entity.id}/${chapterPageBean.currentPage + 1}.html">下一页</a></li>
          	</c:when>
          	<c:otherwise>
          	<li class="disabled"><a href="javascript:void(0);">下一页</a></li>
          	</c:otherwise>
        </c:choose> 
        
    </ul>
</div>  
</c:if>


