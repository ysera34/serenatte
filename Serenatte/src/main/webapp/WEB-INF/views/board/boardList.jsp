<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<script>
function alertLogin(){
	alert("로그인을 해주세요");
};
</script>
<script>
$(document).ready(function(){
	$("#pSizeSlt").change(function(){
// 		$("<input id='pSizeInput' type='submit' value=''>").appendTo("#pSizeForm");
		$("#pSizeInput").trigger("click");
	});
	var pageNo=${pageDTO.pageNo};
	
	
// 	$("#pageActive").click(function(){
// 		$("#pageActive").parent().attr("class","active");
// 		var activePage=$("#pageActive").text();
// 		var temp=activePage+"<span class='sr-only'>(current)</span>";
// 		$("#pageActive").text(temp);
// 	});
});
</script>
<c:choose>
	<c:when test="${userDTO==null}">
		<c:set var="writeBtn" value="javascript:alertLogin()"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="writeBtn" value="location='newContents.html'"></c:set>	
	</c:otherwise>	
</c:choose>
<div class="container">
	<div class="row">
		<div class="col-lg-10 col-lg-offset-1">
			<div class="page-header">
				<h3>자유게시판</h3>
			</div>
			
			<div class="col-lg-12">
				<div class="col-lg-2">
					<button type="button" class="btn btn-default" onclick="${writeBtn}">글쓰기</button>
				</div>
				<div class="col-lg-8"></div>	
				<div class="col-lg-2">
					<form id="pSizeForm" action="boardList.html">
						<select id="pSizeSlt" class="form-control" name="pageSize">
							<option>선택하세요</option><!-- default -->
							<option value="5">5개씩 보기</option>
							<option value="10">10개씩 보기</option>
							<option value="15">15개씩 보기</option>	
						</select>
						<input id='pSizeInput' type='submit' style="display: none;">
					</form>
				</div>
			</div>
			
			<div class="col-lg-12">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>추천수</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<%-- <c:forEach var="" items="" varStatus=""> --%>
							<%--
								items : 반복 데이터가 있는 아이템 collection
								begin : 시작번호 기본값0
								end : 종료번호
								var : 현재 아이템의 변수 이름
								varStatus : 반복 상태 값을 지닌 변수
							--%>
							<c:forEach var="boardDTO" items="${boardList}"
							varStatus="status">
								<tr>
									<td>${boardDTO.listNum}</td> <%-- or <td>${status.count}</td> 일련번호--%>
									<td>
										<a href="viewContent.html?listNum=${boardDTO.listNum}">${boardDTO.title}</a>
									</td>
					     			<td>${boardDTO.userId}</td>
					     			<td>${boardDTO.viewCount}</td>
					     			<td>${boardDTO.likeCount}</td>
					     			<td>${boardDTO.writeDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div><!-- table -->
			</div>
			
			<div id="board-pagination">
				<ul class="pagination">
					<li><a href="boardList.html?pageNo=${pageDTO.firstPageNo}&pageSize=${pageDTO.pageSize}">처음</a></li>
					<li>
						<a href="boardList.html?PageNo=${pageDTO.prevPageNo}&pageSize=${pageDTO.pageSize}" aria-label="Previous" class="prev"><span aria-hidden="true">&laquo;</span></a>
					</li>
					<c:forEach var="i" begin="${pageDTO.startPageNo}" end="${pageDTO.endPageNo}" step="1">
						<c:choose>
							<c:when test="${i==pageDTO.pageNo}">
								<li><a href="boardList.html?pageNo=${i}&pageSize=${pageDTO.pageSize}">${i}</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="boardList.html?pageNo=${i}&pageSize=${pageDTO.pageSize}">${i}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<li>
						<a href="boardList.html?PageNo=${pageDTO.nextPageNo}&pageSize=${pageDTO.pageSize}" aria-label="Next" class="next"><span aria-hidden="true">&raquo;</span></a>
					</li>
					<li><a href="boardList.html?pageNo=${pageDTO.finalPageNo}&pageSize=${pageDTO.pageSize}">마지막</a></li>
				</ul><!-- pagination -->
			</div><!-- <span class="sr-only">(current)</span> -->
		</div>
	</div>
</div>
<!-- </body> -->
<!-- </html> -->