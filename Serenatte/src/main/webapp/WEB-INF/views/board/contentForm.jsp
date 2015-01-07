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
				<div class="col-lg-offset-2 col-lg-2">
					<button type="button" class="btn btn-default" onclick="location='boardList.html'">목록</button>
					<button type="button" class="btn btn-default" onclick="location='newContents.html'">글쓰기</button>
				</div>
				<div class="col-lg-offset-2 col-lg-4">
					<div id="editBtnDiv">
						<button id="editBtn" type="button" class="btn btn-default">수정</button>
						<button id="submitBtn" type="submit" class="btn btn-default">확인</button>
						<button id="deleteBtn" type="button" class="btn btn-default">삭제</button>
						<button id="cancelBtn" type="button" class="btn btn-default">취소</button>
					</div>
				</div>
            </div>
         </form>      
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
	
	$("#editBtn").click(function(){
		$("#text-form").contents().unwrap().wrap("<textarea id='text-form' class='form-control' name='content' rows='15'></textarea>");
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
	});
	
	$("#cancelBtn").click(function(){
		$("#text-form").contents().unwrap().wrap("<div id='text-form'></div>");
		$("#editBtnDiv button:even").css("display","inline");
		$("#editBtnDiv button:odd").css("display","none");
	});
	
});
</script>
<!-- </body> -->
<!-- </html> -->