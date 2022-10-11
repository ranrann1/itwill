<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
<style type="text/css">
.member_join #addressSearch {
    display: inline-block !important;
   	margin-left: -2px !important;
 }

#zipcode {
	width: 181px !important;
}

#addressSearch {
	width: 150px !important;
}

.error {
    color: red;
    position: relative;
    left: 10px;
    top: 10px;
    display: none;
}


#exmaple_eamil.error {
	color: black;
}
#mobile1, #mobile2, #mobile3 {
	height: 44px;
	width: 110px;
	padding: 0 14px;
	border: 1px solid #ccc;
	font-size: 14px;
	color: #333;
	line-height: 20px;
	border-radius: 3px;
	background: #fff;
	outline: none;
	vertical-align: top;
}

#addressNo{
cursor : pointer;
}

#idCheck.btn.default, #emailCheck.btn.default {
	cursor: pointer;
	margin-left: 10px;
	padding: 2px 10px;
	background : yellow;
	border: 1px solid yellow;
	color: black;
}

.member_join #addressSearch {
	background : yellow !important;
	border: 1px solid yellow !important;
	color: black !important;
	
}

.member_join #addressNo {
    margin-left: -27px !important;
    color: black !important;
    background: none !important;
  
}

.type_form .btn.active {
    border: 1px solid yellow !important;
    background-color: yellow !important;
    color: black !important;
   
}

.tit {
	
	margin : auto;
}

.holder {
	position : absolute;
	margin : auto;
	top : 0%;
	left : 20%;
}

.member_join td {
    padding: 22px 0 22px ! important;
    font-size: 17px ! important;
    left: 42px ! important;
    position: relative ! important;
}
.red {
	color: red;
}
</style>

<link
	href="https://www.kurly.com/shop/data/skin/designgj/common.css?ver=1.70.10"
	type="text/css" rel="stylesheet">
<link
	href="https://www.kurly.com/asset/css/cart/list.bundle.css?ver=1.70.10"
	type="text/css" rel="stylesheet">
	
<link
	href="https://www.kurly.com/shop/data/skin/designgj/normalize.css?ver=1.70.10"
	type="text/css" rel="stylesheet">

<link href="https://holaworld.io/static/css/main.d10e25fd.chunk.css"
	type="text/css" rel="stylesheet">


</head>
<body>



<c:choose>
	<c:when test = "${empty(user) }">
		<div class = "holder">
			<div class="tit_page">
				<h2 class="tit">	
					아이디 찾기
				</h2>
			</div>
			<div class="page_article">
				<div class="type_form member_join">
					<form action= "search_id" method="post" id="searchId">
						<p class="page_sub">
							
						</p>
						<table class="tbl_comm">
							<tr>
								<th>이메일</th>
								<td>
									<input type="text" name="email" class="email" id="email" placeholder="예: nBang@gmail.com" value="${user.email}"> 						
									<div id="emailMsg" class="error">이메일을 입력해 주세요.</div>
									<div id="emailRegMsg" class="error">올바른 이메일 주소를 입력해해주세요.</div>
									<div id="example_email" class="error">예시 : nBang@gmail.com</div>
									
								</td>
							</tr>
							<tr>
								<th>이름</th>
								<td>
									<input type="text" name="name" id="name" placeholder="이름을 입력해주세요" value = "${user.name}">
									<div id="nameMsg" class="error">이름을 입력해 주세요.</div>
								</td>
							</tr>
							</tbody>
						</table>
							
						<div style = "text-align:center;"> 
							<button type="submit" class="btn active btn_join" >확인</button>
							<div class="btn active btn_join" style = "cursor:pointer;" onClick="location.href='<c:url value="/user/join"/>';">회원가입</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<div class = "holder">
				<div class="tit_page">
					<h2 class="tit">	
						아이디
					</h2>
				</div>
				<div class="page_article">
					<div class="type_form member_join">
						
							<table class="tbl_comm">
								<tr>
									<th>아이디</th>
									<td>
										<div><span class = "red">'${user.id}'</span> 입니다</div>
									</td>
								</tr>
								
								
								</tbody>
							</table>
							<div style = "text-align:center;"> 
								<button type="submit" class="btn active btn_join"  onClick="location.href='<c:url value="/index"/>';" >메인페이지 이동</button>
								<div class="btn active btn_join" style = "cursor:pointer;" onClick="location.href='<c:url value="/user/search_passwd"/>';">비밀번호 찾기</div>
							</div>
						</div>
					</div>
				</div>
	</c:otherwise>
</c:choose>


<script type="text/javascript">
$("#email").focus();
$("#searchId").submit(function() {
	$(".error").hide();

	var validResult=true;
	
	var email=$("#email").val();
	var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
	if(email=="") {
		$("#emailMsg").show();
		validResult=false;
	} else if(!emailReg.test(email)) {
		$("#emailRegMsg").show();
		validResult=false;
	}
	var name=$("#name").val();
	var nameReg=/^[가-힣]{2,10}$/g;
	if(name=="") {
		$("#nameMsg").show();
		validResult=false;
	} 
	
	
	return validResult;
});
</script>
</body>
</html>