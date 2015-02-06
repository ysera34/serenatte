<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<script>
/* 이미지 읽어서 미리보기에 표시. 썸네일 아님!! */ 
function readURL(input) {
   if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
         $('#blah').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
   }
}
$(document).ready(function(){
	$("#blah").mouseover(function(){
		$(this).css("cursor","pointer");
	});
	$("#blah").click(function(){
		$("#imgInput").trigger("click");
	});
	if($("#blah").attr("src")==""){
		$("#blah").attr("src","resources/custom/images/icon/profile.png")
	}
});

</script>
<%-- <c:choose>
	<c:when test="${imageFile != null}">
		<c:set var="imagePath" value="${pageContext.request.contextPath}/image/${imageFile.id}"></c:set> 
		<c:set var="imagePath" value="${userDTO.profilePath}"></c:set> 
	</c:when>
	<c:otherwise>
		<c:set var="imagePath" value="resources/custom/images/icon/profile.png"></c:set>
	</c:otherwise>
</c:choose>--%>
<div class="container">
	<div class="row">
		<div class="col-xs-offset-1 col-xs-10 col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6 col-lg-offset-3 col-lg-6">
			<div class="page-header">
				<h2>프로필수정</h2>
			</div>
			
			<form id="joinform" action="editproc.html" class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<div class="col-xs-offset-4 col-xs-4 col-sm-offset-4 col-sm-4 col-md-offset-4 col-md-4 col-lg-offset-5 col-lg-6">
						<img alt="" src="${userDTO.profilePath}" id="blah" class="userimg"/>
					</div>
					<div class="col-xs-offset-4 col-xs-4 col-sm-offset-4 col-sm-4 col-md-offset-4 col-md-4 col-lg-offset-5 col-lg-6">
						<input id="imgInput" type="file" onchange="readURL(this);" name="imageFile" style="display:none">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">아이디</label>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<input type="text" class="form-control" name="userId" value="${userDTO.userId}" readonly="readonly">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">비밀번호</label>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<input type="password" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">새 비밀번호</label>
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
						<input type="text" class="form-control" name="nickname" value="${userDTO.nickname}">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-xs-offset-1 col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-1 col-md-3 col-lg-offset-1 col-lg-3 control-label">이메일</label>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<input type="email" class="form-control" name="email" value="${userDTO.email}">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-xs-offset-4 col-xs-7 col-sm-offset-4 col-sm-7 col-md-offset-5 col-md-7 col-lg-offset-5 col-lg-7">
						<button type="submit" class="btn btn-primary">수정</button>
						<button type="button" class="btn btn-primary" onclick="location='/latte/'">취소</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- </body> -->
<!-- </html> -->