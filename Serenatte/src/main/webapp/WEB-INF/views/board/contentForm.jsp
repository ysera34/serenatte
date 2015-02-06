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
function alertLogin(){
	alert("로그인을 해주세요");
};
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
				<h3 id="headerTitle">글보기</h3>
			</div>
		
			<form action="editContent.html" class="form-horizontal" method="post">
				<input type="hidden" name="listNum" value="${boardDTO.listNum}">
	
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-6">
						<p>${boardDTO.title}</p>
					</div>
				</div>
	
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-3">
						<p>작성자 : ${boardDTO.userId}님</p>
					</div>
					<div class="col-lg-offset-2 col-lg-5">
						<p>${boardDTO.writeDate}</p>
					</div>
				</div>
	
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<div id="text-form">${boardDTO.content}</div>
					</div>
				</div>
	
				<div class="form-group">
					<div class="col-sm-4 col-lg-offset-2 col-lg-2">
						<button type="button" class="btn btn-default" onclick="location='boardList.html'">목록</button>
						<button type="button" class="btn btn-default" onclick="${writeBtn}">글쓰기</button>
					</div>
					<div class="col-sm-offset-4 col-sm-4 col-lg-offset-4 col-lg-2">
						<div id="editBtnDiv">
							<button id="editBtn" type="button" class="btn btn-default">수정</button>
							<button id="submitBtn" type="submit" class="btn btn-default">확인</button>
							<button id="deleteBtn" type="button" class="btn btn-default">삭제</button>
							<button id="cancelBtn" type="button" class="btn btn-default">취소</button>
						</div>
					</div>
				</div>
			</form>
			
			<!-- comment -->
			<div class="col-lg-offset-2 col-lg-8">
				<div class="page-header">
					<h5>관심있어요</h5>
				</div>
				<form action="registCmt.html" class="form-horizontal" method="post">
					<input type="hidden" name="listNum" value="${boardDTO.listNum}">
					<input id="cmtWriter" type="hidden" name="userId" value="${userDTO.userId}">
					
					<div class="form-group cmtDiv">
						<div class="col-lg-2 col-md-2 col-sm-2">
							<p><img alt="userImage" src="${userDTO.profilePath}"></p>
							<p>${userDTO.userId}</p>
						</div>
						<div class="col-lg-10 col-md-10 col-sm-10">
							<textarea id="newCmt-form" name="cmt" rows="4" required="required"></textarea>
							<div id="cmtBtnDiv">
								<button id='cmtBtn' type='submit' class='btn btn-default' style='float:right; display:none;'>댓글올리기</button>
							</div>
						</div>
					</div>
					
					<!-- forEach -->
					<c:forEach var="cmtDTO" items="${cmtList}">
						<div class="form-group cmtDiv">
<%-- 							<div>${cmtDTO.writeDate}</div> --%>
							<div class="col-lg-2 col-md-2 col-sm-2">
								<p><img alt="userImage" src="${cmtDTO.imagePath}"></p>
								<p>${cmtDTO.writeId}</p>
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10">
								<div id="cmt-form">${cmtDTO.cmt}</div>
							</div>
						</div>
	 				</c:forEach>
	 				
	 				<!-- table ajax -->
	 				<table class="table table-hover cmtDiv">
	 					<c:forEach var="cmtDTO" items="${cmtList}">
	 						<tr>
	 							<td>${cmtDTO.writeId}</td>
	 							<td>${cmtDTO.cmt}</td>
	 						</tr>
	 					</c:forEach>
	 				</table>
	 				
				</form>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	if ("${userDTO.userId}"!=="${boardDTO.userId}"){
		$("#editBtnDiv button").css("display","none");
	} else {
		$("#editBtnDiv button:odd").css("display","none");
	}
	//sync
	$("div[id='text-form']").html($("div[id='text-form']").html().replace(/\n/g,"<br>"));
	
	$("#editBtn").click(function(){
		$("#text-form").contents().unwrap()
		.wrapAll("<textarea id='text-form' class='form-control' name='content' rows='15'></textarea>");
		$("textarea[id='text-form']").text($("textarea[id='text-form']").text().replace("<br>",/\n/g));
		
// 		$("#text-form").parent()
// 		.append("<textarea id='text-form' class='form-control' name='content' rows='15'></textarea>");
// 		$("div[id='text-form']").detach();
		$("#editBtnDiv button:even").css("display","none");
		$("#editBtnDiv button:odd").css("display","inline");
	});
	
	$("#deleteBtn").click(function(){
		var res = confirm("정말 삭제하시겠습니까?");
		if(res){
			location.replace("deleteContent.html?listNum=${boardDTO.listNum}");
		} else {
			history.go(0);
		}
	});
	
	$("#submitBtn").click(function(){
// 		ajax
	});
	
	$("#cancelBtn").click(function(){
		$("#text-form").contents().unwrap().wrapAll("<div id='text-form'></div>");
		$("div[id='text-form']").html($("div[id='text-form']").html().replace(/\n/g,"<br>"));
		$("#editBtnDiv button:even").css("display","inline");
		$("#editBtnDiv button:odd").css("display","none");
	});
	
	if($(".cmtDiv img").attr("src")==""){
		$(".cmtDiv img").attr("src","resources/custom/images/icon/profile.png")
	}
	
	$("#newCmt-form").click(function(){
		if($("#cmtWriter").val()==""){
			$("#cmtWriter").detach();
			$("#cmtBtnDiv").append("<label class='col-lg-2 col-md-2 col-sm-2'>작성자</label>");
			$("#cmtBtnDiv label").css({"text-align":"center","margin-top":"5px","padding-right":"0px"});
			$("#cmtBtnDiv").append("<div class='col-lg-5 col-md-5 col-sm-5'></div>")
			$("#cmtBtnDiv > div").append("<input id='newCmtWriter' type='text' class='form-control' name='userId' required='required' value=''>");
		}
		$("#cmtBtn").css("display","inline");
// 		if($("#cmtBtnDiv button").length==0){
// 			$("#cmtBtnDiv").append("<button id='cmtBtn' type='submit' class='btn btn-default' style='float:right;'>댓글올리기</button>");
// 		}
	});
	
	$("#cmtBtn").click(function(){
		//스크립트가 로딩됬을때 element가 없엇으므로 안되는것이라고 생각됨.
		//css display none -> inline로 미리 만들어 놓고  필요시 css를 바꿔서 사용해야될거 같음.
		
		//ajax
		//list를 테이블 형식으로 만들어서 tr을 늘리기 해봄세.		
	});
});
</script>
<!-- </body> -->
<!-- </html> -->