<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../../include/client/import.jsp" %>

<c:if test="${pageBean.allRow > 0}">
<h3 class="color-green">大众点评</h3>
<c:forEach items="${pageBean.list}" var="comment">
<div class="media">
    <a class="pull-left" href="#">
        <img class="media-object" src="${ctx}/${comment.logo}" alt="" />
    </a>
    <div class="media-body">
    <h4 class="media-heading">${comment.name} <span>${comment.displayFullTime}</span></h4>
    <p>${comment.content}</p>
    </div>
</div><!--/media-->
</c:forEach>
<%@include file="../../include/client/comment_pager.jsp" %>

<hr />
</c:if>
<!-- Leave a Comment -->
<div class="post-comment">
	<h3 class="color-green">到此一游</h3>
    <form id="add_form" method="post">
        <textarea rows="5" class="span10" id="content" name="content"></textarea>
        <input type="hidden" id="articleId" name="article.id" value="${article.id}"/>
        <p><button type="submit" class="btn-u">提&nbsp;&nbsp;&nbsp;&nbsp;交</button></p>
    </form>
</div><!--/post-comment-->

