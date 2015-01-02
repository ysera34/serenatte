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
				<h3>컨텐츠 제작</h3>
			</div>

			<form action="addContents.html" class="form-horizontal"  method="post">
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<input type="text" class="form-control" name="title" placeholder="제목">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<p>누구니? : ${userDTO.nickname}</p>
						<input type="hidden" name="userId" value="${userDTO.userId}">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<textarea class="form-control" name="content" placeholder="뭐쓰니?" rows="10"></textarea>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<input type="file">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-5 col-lg-4">
						<button type="submit" class="btn btn-default">글썼어영</button>
						<button type="button" class="btn btn-default" onclick="location='boardList.html'">목록보기</button>
						<button type="button" class="btn btn-default" onclick="location='boardSelect.html'">테스트</button>
					</div>
				</div>
				
			</form>		
		</div>
	</div>
</div>
<!-- </body> -->
<!-- </html> -->