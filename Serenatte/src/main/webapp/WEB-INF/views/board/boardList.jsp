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
	//select option 값 넘기기
	$("#pSizeSlt").change(function(){
// 		$("<input id='pSizeInput' type='submit' value=''>").appendTo("#pSizeForm");
		$("#pSizeInput").trigger("click");
	});
	//활성 페이지 색변경
	var pageNo=${pageDTO.pageNo};
	$("a[id$="+pageNo+"]").parent().attr("class","active");
	//select tag에 페이지 사이즈 나타내기
	var pageSize=${pageDTO.pageSize};
	$("#pSizeSlt option[value="+pageSize+"]").attr("selected","selected");
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
		<div class="col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-1 col-lg-10">
			<div class="page-header">
				<h3>자유게시판</h3>
			</div>
			
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="col-sm-2 col-md-2 col-lg-2">
					<button type="button" class="btn btn-default" onclick="${writeBtn}">글쓰기</button>
				</div>
				<div class="col-sm-offset-8 col-sm-2 col-md-offset-8 col-md-2 col-lg-offset-8 col-lg-2">
					<form id="pSizeForm" action="boardList.html">
						<select id="pSizeSlt" class="form-control" name="pageSize">
							<option value="10">선택하세요</option><!-- default -->
							<option value="5">5개씩</option>
							<option value="10">10개씩</option>
							<option value="15">15개씩</option>	
						</select>
						<input id="pSizeInput" type="submit" style="display: none;">
					</form>
				</div>
			</div>
			
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th id="th-listNum">번호</th>
								<th id="th-title">제목</th>
								<th id="th-user">작성자</th>
								<th id="th-views">조회수</th>
								<th id="th-likes">추천수</th>
								<th id="th-wDate">작성일</th>
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
									<td id="td-listNum">${boardDTO.listNum}</td> <%-- or <td>${status.count}</td> 일련번호--%>
									<td id="td-title">&nbsp;&nbsp;&nbsp;
										<a href="viewContent.html?listNum=${boardDTO.listNum}">${boardDTO.title}</a>
									</td>
					     			<td id="td-user">${boardDTO.userId}</td>
					     			<td id="td-views">${boardDTO.viewCount}</td>
					     			<td id="td-likes">${boardDTO.likeCount}</td>
					     			<td id="td-wDate">${boardDTO.writeDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div><!-- table -->
			</div>
			
			<div id="board-pagination">
				<ul class="pagination">
					<li>
						<a href="boardList.html?pageNo=${pageDTO.firstPageNo}&pageSize=${pageDTO.pageSize}">&laquo;</a>
					</li>
					<li>
						<a href="boardList.html?PageNo=${pageDTO.prevPageNo}&pageSize=${pageDTO.pageSize}" aria-label="Previous" class="prev"><span aria-hidden="true">&lsaquo;</span></a>
					</li>
					<c:forEach var="i" begin="${pageDTO.startPageNo}" end="${pageDTO.endPageNo}" step="1">
						<c:choose>
							<c:when test="${i==pageDTO.pageNo}">
								<li><a id="pageNav${i}" href="boardList.html?pageNo=${i}&pageSize=${pageDTO.pageSize}">${i}</a></li>
							</c:when>
							<c:otherwise>
								<li><a id="pageNav${i}" href="boardList.html?pageNo=${i}&pageSize=${pageDTO.pageSize}">${i}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<li>
						<a href="boardList.html?PageNo=${pageDTO.nextPageNo}&pageSize=${pageDTO.pageSize}" aria-label="Next" class="next"><span aria-hidden="true">&rsaquo;</span></a>
					</li>
					<li>
						<a href="boardList.html?pageNo=${pageDTO.finalPageNo}&pageSize=${pageDTO.pageSize}">&raquo;</a>
					</li>
				</ul><!-- pagination -->
			</div><!-- <span class="sr-only">(current)</span> -->
		</div>
	</div>
</div>
<!-- </body> -->
<!-- </html> -->