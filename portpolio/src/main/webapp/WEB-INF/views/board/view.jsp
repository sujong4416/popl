<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--   <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script> -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

<style type="text/css">
#deleteDiv {
	display: none;
}

ul.chat>li:hover {
	background: #ddd;
	cursor: pointer;
}
</style>





</head>
<body>
	<div class="card shadow md-4">
		<div class="card-header py-3">게시판 글보기</div>
		<div class="card-body">
			<table class="table">
				<tbody>
					<tr>
						<th>글번호</th>
						<td>${vo.no }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${vo.title }</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${vo.content }</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${vo.writer }</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${vo.writeDate }" /></td>
					</tr>
					<tr>
						<th>조회수</th>
						<td><fmt:formatNumber pattern="#,###" value="${vo.hit }" /></td>
					</tr>
				</tbody>
			</table>

			<a href="update.do?no=${vo.no }" class="btn btn-default">수정</a> <a
				href="#" class="btn btn-default" onclick="return false"
				id="deleteBtn">삭제</a> <a href="list.do" class="btn btn-default">리스트</a>
			<div id="deleteDiv">
				<form action="delete.do" method="post">
					<input name="no" value="${vo.no }" type="hidden">
					<div class="form-group">
						<label>본인 확인용 비밀번호 입력 :</label> <input name="pw"
							class="form-control" type="password">
					</div>
					<button class="btn btn-danger btn-sm">삭제</button>
					<button class="btn btn-warning btn-sm" type="button" id="cancelBtn">취소</button>
				</form>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-comments fa-fw"></i> Reply
					<button id="replyWriteBtn"
						class="btn btn-primary btn-sm float-right">New Reply</button>
				</div>
				<div class="card-body">
					<!-- 댓글을 출력하는 UL - 데이터 한개 당 li 태그 한개 -->
					<ul class="chat" id="replyList">
						<li class="left clearfix" data-rno="12">
							<div>
								<div class="header">
									<strong class="primary-font">replyer</strong> <small
										class="pull-right text-muted">regdate</small>
								</div>
								<p>reply</p>
							</div>
						</li>
					</ul>
					<!-- 댓글을 출력하는 UL 끝 -->
				</div>
				<div class="card-footer" id="replyPageDiv"></div>
			</div>
			<!-- card의 끝 -->

		</div>
	</div>

	<!-- The Modal -->
	<div class="modal" id="replyModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title" id="replyModalTitle">REPLY Modal</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body form tag 는 만들지 않고 데이터 수집용으로만 input, textarea, select 태그 사용
				   - 등록 : 댓글 내용. 수정 : 댓글 번호(보이게), 댓글 내용 -->
				<div class="modal-body">
					<div class="form-group" id="rnoDiv">
						<label>댓글 번호</label> <input name="rno" id="rno"
							class="form-control" readonly="readonly" value="">
					</div>
					<div class="form-group">
						<label>댓글 내용</label>
						<textarea rows="5" class="form-control" name="reply" id="reply"></textarea>
					</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="modalWriteBtn">등록</button>
					<button type="button" class="btn btn-primary" id="modalUpdateBtn">수정</button>
					<button type="button" class="btn btn-primary" id="modalDeleteBtn">삭제</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				</div>

			</div>
		</div>
	</div>

	<%-- 	<c:if test="${msg != null }"> --%>
	<%-- 	<%@ include file="../common/message.jspf"%> --%>
	<%-- 	</c:if> --%>

	<script type="text/javascript">
	$(function(){
		
		<c:if test="${msg != null}">
			$("#messageModal").modal("show");
		</c:if>

		
		$("ul.chat").on("click","li",function(){
			// alert("댓글 한개 클릭");
			// 데이터 수집
			// 클릭한  태그 안에 data-rno=284
			var rno = $(this).data("rno");
			var reply = $(this).find("p").text();
			// alert("rno=" + rno + ", reply=" + reply);

			// 모달에 데이터 세팅
			$("#rno").val(rno);
			$("#reply").val(reply);

			// 모달창 제목 바꾸기
			$("#replyModalTitle").text("댓글 수정 / 삭제 모달 창");

			// 모달 처리 버튼
			$("#modalWriteBtn").hide();
			$("#modalUpdateBtn, #modalDeleteBtn").show();

			// 댓글 번호 보여지게
			$("#rnoDiv").show();
			
			// 모달 보여주기
			$("#replyModal").modal("show");
			
		});
		
		// 사용 시점 - 게시판 글보기 보여 주는 처음 시점, 댓글 등록 후, 댓글 수정 후, 댓글 삭제 후 -> 함수로 만들고 호출
		

		// 게시판 글보기 이벤트 처리
		$("#deleteBtn").click(function(){
			// alert("삭제 버튼 클릭");
			$("#deleteDiv").slideDown();
		});
		$("#cancelBtn").click(function(){
			$("#deleteDiv").slideUp();
		});

		// 모달 창을 보이게 - 댓글 등록 버튼 : 댓글 제목 오른쪽 버튼
		$("#replyWriteBtn").click(function(){
			// 댓글 모달창 제목 바꾸기
			$("#replyModalTitle").text("댓글 등록 모달 창");

			// 댓글 번호 숨김
			$("#rnoDiv").hide();

			// 필요 없는 버튼 - 수정, 삭제 숨김
			$("#modalUpdateBtn, #modalDeleteBtn").hide();

			// 필요한 버튼 - 등록 표시
			$("#modalWriteBtn").show();

			// 데이터 지우지
			$("#reply").val("");
			
			// 모달 창을 보이게 하자.
			$("#replyModal").modal("show");
		});

		
		
			
			// 모달 창을 안보이게 하자.
			$("#replyModal").modal("hide");
		}); // 댓글 등록 처리의 끝

		
	$("#replyWriteBtn").click(function(){
		// 댓글 모달창 제목 바꾸기
		$("#replyModalTitle").text("댓글 등록 모달 창");

		// 댓글 번호 숨김
		$("#rnoDiv").hide();

		// 필요 없는 버튼 - 수정, 삭제 숨김
		$("#modalUpdateBtn, #modalDeleteBtn").hide();

		// 필요한 버튼 - 등록 표시
		$("#modalWriteBtn").show();

		// 데이터 지우지
		$("#reply").val("");
		
		// 모달 창을 보이게 하자.
		$("#replyModal").modal("show");
	});
  </script>
	<!-- 댓글관련 -->
	<script type="text/javascript">
var bno = ${vo.no};
var replyer = "${login.id}";

$("#modalWriteBtn").click(function(){
    var reply = $("#reply").val();
    var data = JSON.stringify({
        "no": ${vo.no},
        "replyer": "${login.id}",
        "reply": reply
    });
    
    $.ajax({
        type: "POST",
        url: "/boardReply/replyWrite.do",
        contentType: "application/json",
        data: data,
        success: function(result){
            console.log("등록");
            getReplyList();
            $('#replyModal').modal('hide')
        },
        error: function(result){
            console.log("실패");
        }
    });
});
</script>
	<script type="text/javascript">

function getReplyList(page) {
	  $.ajax({
	    type: "GET",
	    url: "/boardReply/replyList.do",
	    data: {"no": ${vo.no}
			
	    },
	    dataType: "json",
	    success: function(data) {
	      var html = "";
	      for (var i = 0; i < data.length; i++) {
		      console.log(data[i])
		      html += "<li class='left clearfix' data-rno='" + data[i].rno + "'>";
              html += "<div>";
              html += "<div class='header'>";
              html += "<strong class='primary-font'>" + data[i].replyer + "</strong>";
              html += "<small class='pull-right text-muted'>" + data[i].regdate + "</small>";
              html += "</div>";
              html += "<p>" + data[i].reply + "</p>";
              html += "</div>";
              html += "</li>";
	      }
	      $("#replyList").html(html);

	     
	    },
	    error: function(xhr, status, error) {
	      console.error(xhr.responseText);
	    }
	  });
	}

	$(document).ready(function() {
	  getReplyList();
	});

	$("#modalUpdateBtn").click(function(){
	var reply = $("#reply").val();
    var data = JSON.stringify({
        "rno": $("#rno").val(),
        
        "reply": reply
    });
		 $.ajax({
		        type: "POST",
		        url: "/boardReply/replyUpdate.do",
		        contentType: "application/json",
		        data: data,
		        success: function(result){
		            console.log("등록");
		            getReplyList();
		            $('#replyModal').modal('hide')
		        },
		        error: function(result){
		            console.log("실패");
		        }
		    });
		
	 });

	$("#modalDeleteBtn").click(function(){
		
	    var data = JSON.stringify({
	        "rno": $("#rno").val(),
	        
	        
	    });
			 $.ajax({
			        type: "POST",
			        url: "/boardReply/replyDelete.do",
			        contentType: "application/json",
			        data: data,
			        success: function(result){
			            console.log("삭제");
			            getReplyList();
			            $('#replyModal').modal('hide')
			        },
			        error: function(result){
			            console.log("실패");
			        }
			    });
			
		 });
	 // 모달 창안에 수정 버튼 이벤트 끝
</script>
	<!-- 댓글관련 -->
</body>
</html>