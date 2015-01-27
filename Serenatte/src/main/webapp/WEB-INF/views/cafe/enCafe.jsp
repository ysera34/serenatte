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
				<h2 id="headerTitle">매장등록</h2>
			</div>
			
			<form action="" class="form-horizontal" method="post">
				<div class="form-group">
					<label class="col-lg-3 control-label">제목</label>
					<div class="col-lg-6">
						<input type="text" class="form-control" name="title">					
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">상호</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="cafeName">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">옵션</label>
					<div class="col-lg-6">
						<input type="checkbox" name="basicInfo1" value="1"/><label>WIFI</label>
						<input type="checkbox" name="basicInfo2" value="2"/><label>주차</label>
						<input type="checkbox" name="basicInfo3" value="3"/><label>24시</label>
						<input type="checkbox" name="basicInfo4" value="4"/><label>흡연</label>
						<input type="checkbox" name="basicInfo5" value="5"/><label>식사</label>
						<input type="checkbox" name="basicInfo6" value="6"/><label>세미나실</label>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">영업시간</label>
					<div class="col-lg-7">
						<div class="col-lg-3">
							<input type="time" class="form-control" name="businessHours">
						</div>
						<div class="col-lg-1">
							<span style="margin-left: 0px; margin-top: 0px">~</span>
						</div>
						<div class="col-lg-3">
							<input type="time" class="form-control" name="businessHours">
						</div>	
					</div>	
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">휴일</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="dayOff">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">주소</label>
					<div class="col-lg-6">
						<input type="text" class="form-control" name="cafeAddress">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">웹사이트</label>
					<div class="col-lg-6">
						<input type="text" class="form-control" name="cafeUrl">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">전화번호</label>
					<div class="col-lg-6">
						<input type="number" class="form-control" name="cafeTel">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">아메리카노 가격</label>
					<div class="col-lg-3">
						<input type="text" class="form-control" name="amePrice">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">한줄평</label>
					<div class="col-lg-6">
						<input type="text" class="form-control" name="comment">
					</div>
				</div>
				
				<hr>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">평가요소1</label>
					<div class="col-lg-6">
						<input type="text" class="form-control" name="eval1">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">평가요소2</label>
					<div class="col-lg-6">
						<input type="text" class="form-control" name="eval2">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">평가요소3</label>
					<div class="col-lg-6">
						<input type="text" class="form-control" name="eval3">
					</div>
				</div>
				
				<hr>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">사진첨부</label>
					<div class="col-lg-6">
						<input type="file" class="form-control" name="image">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label">내용</label>
					<div class="col-lg-6">
						<textarea class="form-control" name="content" rows="15"></textarea>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-5 col-lg-4">
						<button type="submit" class="btn btn-default">완료</button>
						<button type="reset" class="btn btn-default">취소</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- </body> -->
<!-- </html> -->