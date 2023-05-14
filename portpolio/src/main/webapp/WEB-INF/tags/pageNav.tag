<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="pageObject" required="true"
 type="org.zerock.board.service.PageObject" %>
<%@ attribute name="listURI" required="true"
 type="java.lang.String" %>
<%@ attribute name="query" required="false"
 type="java.lang.String" %> 

<% /** PageNation을 위한 사용자 JSP 태그  *
	 * 작성자 웹짱 이영환 강사 
	 * 작성일 2023.03.17
	 * 버전 5.0
	 
	 * 사용방법 :<pageObject:pageNav listURI="호출 List URL"
	 			pageObject= "웹짱 페이지 객체" query="댓글 페이지 등 뒤에 붙이는 쿼리" />
   */ %>

<% request.setAttribute("noLinkColor", "#999"); %>
<% request.setAttribute("tooltip", " data-toggle=\"tooltip\" data-placement=\"top\" "); %>
<% request.setAttribute("noMove", " title=\"no move page!\" "); %>

<!-- BootStrap4, Font Awesome 4 적용 -->
<ul class="pagination">
  	<li data-page=1 class="page-item">
		<c:if test="${pageObject.page > 1 }">
			<!-- 맨 첫페이지로 이동 -->
	  		<a href="${listURI }?page=1&perPageNum=${pageObject.perPageNum}&key=${pageObject.key}&word=${pageObject.word}${query}"
	  		  title="click to move first page!" ${tooltip } class="page-link">
	  			<i class="fa fa-angle-double-left"></i>
	  		</a>
  		</c:if>
		<c:if test="${pageObject.page == 1 }">
	  		<a href="" onclick="return false"
	  		 ${noMove }  ${tooltip } class="page-link">
	  			<i class="fa fa-angle-double-left" style="color: ${noLinkColor};"></i>
	  		</a>
	  	</c:if>
	</li>
	
	
	<li data-page=${pageObject.startPage -1 } class="page-item">
		<c:if test="${pageObject.startPage > 1 }">
	  		<a href="${listURI }?page=${pageObject.startPage - 1 }&perPageNum=${pageObject.perPageNum}&key=${pageObject.key}&word=${pageObject.word}${query}"
	  		  title="click to move previous page group!" ${tooltip } class="page-link" >
	  			<i class="fa fa-angle-left"></i>
	  		</a>
	  	</c:if>
		<c:if test="${pageObject.startPage == 1 }">
	  		<a href="" onclick="return false" class="page-link"
	  		 ${noMove } ${tooltip }>
	  			<i class="fa fa-angle-left" style="color: ${noLinkColor};"></i>
	  		</a>
	  	</c:if>
  	</li>
	<c:forEach begin="${pageObject.startPage }" end="${pageObject.endPage }" var="cnt">
  	<li ${(pageObject.page == cnt)?"class=\"active\"":"" } class="page-item"
  	 data-page=${cnt }>
  	 	<!-- 페이지와 cnt가 같으면 링크가 없음 -->
  	 	<c:if test="${pageObject.page == cnt }">
  			<a href="" onclick="return false" class="page-link"
  			 ${noMove } ${tooltip }>${cnt}</a>
  	 	</c:if>
  	 	<!-- 페이지와 cnt가 같지 않으면 링크가 있음 -->
  	 	<c:if test="${pageObject.page != cnt }">
  			<a href="${listURI }?page=${cnt }&perPageNum=${pageObject.perPageNum}&key=${pageObject.key}&word=${pageObject.word}${query}"
	  		 title="click to move ${cnt } page" ${tooltip } class="page-link">${cnt} </a>
  		</c:if>
  	</li>
	</c:forEach>
	<c:if test="${pageObject.endPage < pageObject.totalPage }">
	  	<li data-page=${pageObject.endPage + 1 } class="page-item">
	  		<a href="${listURI }?page=${pageObject.endPage + 1 }&perPageNum=${pageObject.perPageNum}&key=${pageObject.key}&word=${pageObject.word}${query}"
	  		  title="click to move next page group!" ${tooltip } class="page-link">
	  			<i class="fa fa-angle-right"></i>
	  		</a>
	  	</li>
  	</c:if>
	<c:if test="${pageObject.endPage == pageObject.totalPage }">
	  	<li data-page=${pageObject.endPage + 1 } class="page-item">
	  		<a href="" onclick="return false" class="page-link"
	  		 ${noMove }  ${tooltip } >
	  			<i class="fa fa-angle-right" style="color: ${noLinkColor};"></i>
	  		</a>
	  	</li>
  	</c:if>
	<c:if test="${pageObject.page < pageObject.totalPage }">
	  	<li data-page=${pageObject.totalPage } class="page-item">
	  		<a href="${listURI }?page=${pageObject.totalPage }&perPageNum=${pageObject.perPageNum}&key=${pageObject.key}&word=${pageObject.word}${query}"
	  		  title="click to move last page!" ${tooltip } class="page-link">
		  		<i class="fa fa-angle-double-right"></i>
	  		</a>
	  	</li>
  	</c:if>
	<c:if test="${pageObject.page == pageObject.totalPage }">
	  	<li data-page=${pageObject.totalPage } class="page-item">
	  		<a href="" onclick="return false" class="page-link"
	  		 ${noMove }  ${tooltip } >
		  		<i class="fa fa-angle-double-right" style="color: ${noLinkColor};"></i>
	  		</a>
	  	</li>
  	</c:if>
</ul> 

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
  $(".pagination").mouseover(function(){
//   		$(".tooltip > *:last").css({"background-color": "red", "border": "1px dotted #444"});   
	});
});
</script>
