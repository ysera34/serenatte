<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							<tr>
								<td>1,001</td>
								<td>Loremdfdfsfdsf</td>
				     			<td>ipsum</td>
				     			<td>ysera</td>
				     			<td>dolor</td>
				     			<td>sit</td>
				     			<td><button type="button" class="btn btn-default">수정</button>
				     			<button type="button" class="btn btn-default">삭제</button></td>
							</tr>
							<tr>
								<td>1,001</td>
								<td>Lorem</td>
				     			<td>ipsummerian</td>
				     			<td>ysera</td>
				     			<td>dolor</td>
				     			<td>sit</td>
				     			<td><button type="button" class="btn btn-default">수정</button>
				     			<button type="button" class="btn btn-default">삭제</button></td>
							</tr>
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