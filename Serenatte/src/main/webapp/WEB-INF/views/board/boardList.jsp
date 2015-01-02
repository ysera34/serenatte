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
<div class="container">
	<div class="row">
		<div class="col-lg-10 col-lg-offset-1">
			<div class="page-header">
				<h3>자유게시판</h3>
			</div>
			
			<div class="col-lg-offset-10 col-lg-2">
				<button type="button" class="btn btn-default" onclick="location='newContents.html'">글쓰기</button>
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
								<th></th>
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
							<c:forEach var="boardDTO" items="${boardList}" varStatus="status">
								<tr>
									<td>${boardDTO.listNum}</td> <%-- or <td>${status.count}</td> 일련번호--%>
									<td>
										<a href="#">${boardDTO.title}</a>
									</td>
					     			<td>${boardDTO.userId}</td>
					     			<td>${boardDTO.viewCount}</td>
					     			<td>${boardDTO.likeCount}</td>
					     			<td>${boardDTO.writeDate}</td>
					     			<td><button type="button" class="btn btn-default">수정</button>
					     			<button type="button" class="btn btn-default">삭제</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div><!-- table -->
			</div>
			
			<div class="col-lg-4 col-lg-offset-4">
				<ul class="pagination">
					<li>
						<a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
					</li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li>
						<a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
					</li>
				</ul><!-- pagination -->
			</div>
		</div>
	</div>
</div>
<!-- </body> -->
<!-- </html> -->