
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!doctype html>
<html lang="en">
  <head>
   <link rel="stylesheet" href="resources/css/subStyle.css" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>글쓰기</title>
<style type="text/css">
.type{
	text-align: left;
	font-weight: bold;
}
.buttons{
	text-align: right;
}
h2{
	font-weight: bold;
}


</style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>
  <body>

     	<div class="logo" style="text-align: center;">
         <img src="resources/assets/images/logo.png" alt="logo"  onClick="location.href='<c:url value="/index"/>';" style = "cursor:pointer;" />
        </div>
 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <div class="container text-center">
    <h2>1.카테고리를 정해주세요</h2>
    <hr>
    <form name="BoardForm" method="post">
  <div class="row">
    <div class="col-lg-6">
  	  <p class="type">카테고리</p>
      <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="category" id="category">
      	<option value="치킨">치킨</option>
      	<option value="피자">피자</option>
      	<option value="고기">고기</option>
      	<option value="백반">백반</option>
      	<option value="중식">중식</option>
      	<option value="햄버거">햄버거</option>
      	<option value="떡볶이">떡볶이</option>
      	<option value="양식">양식</option>
      	<option value="디저트">디저트</option>
      </select>
    </div>
    <div class="col-lg-6">
     <p class="type">인원</p>
	<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="minnum" id="minnum">
      	<option value="2">2</option>
      	<option value="3">3</option>
      	<option value="4">4</option>
      	<option value="5">5</option>
      </select>
    </div>
    <div class="col-lg-6">
    <p class="type">위치</p>
    <input class="form-control form-control-lg mb-3"  type="text" placeholder="" aria-label=".form-control-lg example" name="location" id="location" >

	</div>
	<input type="hidden" name="uid" value="${loginUser.id }">
	
	<div class="col-lg-6">
	  <p class="type">시작 예정일</p>
	  <p><input type="date" class="form-control form-control-lg mb-3"  aria-label=".form-control-lg example" id="sdate" name="sdate"></p>
	</div>
	<div class="col-lg-6">
	  <p class="type">모집 종료 예정일</p>
	  <p><input type="date" class="form-control form-control-lg mb-3"  aria-label=".form-control-lg example" id="edate" name="edate" ></p>
	</div>

    </div>
    <h2>2.음식에 대해 설명해주세요</h2>
    <hr>
    <div class="mb-3">
	  <p class="type">제목</p>
	  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="글 제목을 입력해주세요!" id="title" name="title">
	</div>
	<div class="mb-3">
	  <textarea class="form-control" id="exampleFormControlTextarea1" rows="8" placeholder="음식에 대해 소개해주세요!" id="content" name="content"></textarea>
	</div>
	<div class="buttons">
	<input type="reset" class="btn btn-light" onclick="" value="초기화"></input>
	<input type="button" class="btn btn-dark" onclick="submitCheck();" value="글등록"></input>
	</div>
	</form>
  </div>

	


<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">


	 document.getElementById('sdate').value = new Date().toISOString().substring(0, 10);
	 
	 document.getElementById('edate').value = new Date().toISOString().substring(0, 10);
	 var today = new Date().toISOString().split('T')[0];
	 document.getElementsByName("sdate")[0].setAttribute('min', today);
	 document.getElementsByName("edate")[0].setAttribute('min', today);
	 
	
	 function submitCheck() {
		 if(BoardForm.location.value==""){
			 alert("위치를 입력해 주세요.");
			 title.focus();
			 return;
		 }
		 if(BoardForm.title.value==""){
			 alert("제목을 입력해 주세요.");
			 title.focus();
			 return;
		 }
		
		 if(BoardForm.content.value==""){
			 alert("내용을 입력해 주세요.");
			 content.focus();
			 return;
		 }
		 BoardForm.method="post";
		
		 BoardForm.submit();
	}
	 
	 
  </script>
</body>
</html>



