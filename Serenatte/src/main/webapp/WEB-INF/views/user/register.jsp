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
		<div class="col-xs-offset-1 col-xs-10 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
			<div class="page-header">
				<h2>함께하기</h2>
			</div>
			
			<form id="joinform" action="registerproc.html" class="form-horizontal" method="post">
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">아이디</label>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<input type="text" class="form-control" name="userId">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">비밀번호</label>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<input type="password" class="form-control" name="password">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">비밀번호 확인</label>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<input type="password" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">닉네임</label>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<input type="text" class="form-control" name="nickname">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">이메일</label>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<input type="email" class="form-control" name="email">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-xs-offset-4 col-xs-7 col-sm-offset-4 col-sm-7 col-md-offset-5 col-md-7 col-lg-offset-5 col-lg-7">
						<button type="submit" class="btn btn-primary">가입</button>
						<button type="button" class="btn btn-primary" onclick="location='/latte/'">취소</button>
<!-- 						<button type="button" class="btn btn-primary" onclick="location='/'">취소</button> -->
					
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
// $(document).ready(function(){
// 	$("#joinform").bootstrapValidator({
// 		message: '유효하지 않는 값입니다.',
// 		feedbackIcons: {
// 			valid: 'glyphicon glyphicon-ok',
// 			invalid: 'glyphicon glyphicon-remove',
// 			validating: 'glyphicon glyphicon-refresh'
// 		},
// 		fields: {
// 			userId: {
// 				message: '유효하지 않는 아이디입니다.',
// 				validators: {
// 					notEmpty: {
// 						message: '필수 항목입니다.'
// 					}
// 				}
// 			}
// 		}
// 	})
// 	.on('success.form.bv', function(e){
// 		e.preventDefault();
// 		var $form = $(e.target);
// 		var bv = $form.data('bootstrapValidator');
// 		$.post($form.attr('action'), $form.serialize(), function(result){
// 			console.log(result);	
// 		},'json');
// 	});
// });
</script>
</body>
</html>