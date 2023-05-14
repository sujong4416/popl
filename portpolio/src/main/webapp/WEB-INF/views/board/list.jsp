<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="card shadow md-4">
<!-- <div class="container"> -->
	<div class="card-header py-3">
		
<!-- 		<h3>게시판 리스트</h3> -->
	</div>
	<div class="container" style="width:90%; margin-top:20px; margin-bottom:20px">
		<table class="table">
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="vo">
					<tr class="dataRow"> 
						<td class="no">${vo.no }</td>
						<td>${vo.title }</td>
						<td>${vo.writer }</td>
						<td><fmt:formatDate value="${vo.writeDate }" pattern="yyyy-MM-dd"/></td>
						<td>${vo.hit }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="write.do" class="btn btn-default">글쓰기</a>
		<div><pageNav:pageNav listURI="list.do" pageObject="${pageObject }" /></div>
	
	</div>
</div>


</body>
</html>