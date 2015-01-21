<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<link rel="stylesheet" href="resources/bootstrap/css/bootstrapValidator.css">
<script src="resources/bootstrap/js/bootstrapValidator.js"></script>
<!-- </head> -->
<!-- <body> -->
<div class="container">
	<div class="row">
		<div class="col-lg-6 col-lg-offset-3">
			<div class="page-header">
				<h2>들어가기</h2>
			</div>
			
			<form id="joinform" action="loginproc.html" class="form-horizontal" method="post">
				<div class="form-group">
					<label class="col-lg-offset-1 col-lg-3 control-label">아이디</label>
					<div class="col-lg-6">
						<input type="text" class="form-control" name="userId" autofocus>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-offset-1 col-lg-3 control-label">비밀번호</label>
					<div class="col-lg-6">
						<input type="password" class="form-control" name="password">
					</div>
				</div>
				
				
				<div class="form-group">
					<div class="col-lg-7 col-lg-offset-5">
						<button type="submit" class="btn btn-primary">로그인</button>
						<button type="button" class="btn btn-primary" onclick="location='registerform.html'">가입</button>
<!-- 						<button type="button" class="btn btn-primary" onclick="location='/'">취소</button> -->
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-7 col-lg-offset-5">
						<span style="color:red; font-size:15px;">${msg}</span>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	
});
</script>
<!-- </body> -->
<!-- </html> -->