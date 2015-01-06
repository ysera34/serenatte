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

         
         <form action="" class="form-horizontal"  method="post" id="text-form">
            
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
                  <textarea class="form-control" name="content" rows="15">${boardDTO.content}</textarea>
               </div>
            </div>
            
            <div class="form-group">
               <div class="col-lg-offset-5 col-lg-4">
                  <button type="button" class="btn btn-default" onclick="location='boardList.html'">목록보기</button>
               </div>
            </div>
            
         </form>      
      </div>
   </div>
</div>
<!-- </body> -->
<!-- </html> -->