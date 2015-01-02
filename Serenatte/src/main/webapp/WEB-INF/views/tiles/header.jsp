<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- <h1>header</h1> -->

<c:choose>
	<c:when test="${userDTO==null}">
		<c:set var="loginbtn" value="Login"></c:set>
		<c:set var="loginurl" value="loginform.html"></c:set>
		<c:set var="registerbtn" value="Signin"></c:set>
		<c:set var="registerurl" value="registerform.html"></c:set>
		<c:set var="loginId" value="loginBtn"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="loginbtn" value="Logout"></c:set>
		<c:set var="loginurl" value="logout.html"></c:set>
		<c:set var="registerbtn" value="${userDTO.nickname}"></c:set>
		<c:set var="registerurl" value="registeredit.html"></c:set>
		<c:set var="loginId" value="logoutBtn"></c:set>
	</c:otherwise>
</c:choose>
<div class="container">
<div class="container-fluid">
	
	<div class="row">
		<div class="col-xs-3 col-md-3"></div>
		<div class="col-xs-6 col-md-6">
			<div class="header-logo">
				<a href="/latte/">
					<img id="headerlogo" src="resources/custom/images/logo/logo.jpg">
				</a>
		</div>
		</div>
		<!-- login -->
		<div class="col-xs-3 col-md-3">
			<div class="loginBox">
				<button type="button" id="${loginId}" class="btn btn-default" onclick="location='${loginurl}'">${loginbtn}</button>
				<button type="button" id="${loginId}" class="btn btn-default" onclick="location='${registerurl}'">${registerbtn}</button>
			</div>
		</div>
	</div>
</div>
</div>
<script>
$(document).ready(function(){
	$("#logoutBtn").click(function(){
		var res = confirm("로그아웃 하시겠습니까???");
		if(res){
			location.replace("logout.html");
		} else {
			history.go(0);
		}
	});
});
</script>
<!-- </body> -->
<!-- </html> -->