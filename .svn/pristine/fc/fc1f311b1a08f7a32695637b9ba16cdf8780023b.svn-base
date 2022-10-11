<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join_form</title>

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


		<div class = "holder">
			<div class="tit_page">
				<h2 class="tit">	
					비밀번호 찾기
				</h2>
			</div>
			<div class="page_article">
				<div class="type_form member_join">
					<form action= "changePwd" method="post" id="changePwd">
						<p class="page_sub">
							
						</p>
						<table class="tbl_comm">
						<tr class="fst">
							<th>아이디</th>
							<td>
								<input type="text" name="id" id="id" readonly value = "${user.id}"> 
								<div id="idMsg" class="error"> 아이디를 입력해주세요</div>
								<div id="idRegMsg" class="error"> 6자 이상의 영문 혹은 영문과 숫자를 조합</div>
							</td>
						
						</tr>
						<tr>
							<th>비밀번호</th>
							<td>
								<input type="password" name="password" id="password" placeholder="비밀번호를 입력해주세요" >
								<div id="passwdMsg" class="error">비밀번호를 입력해 주세요</div>
								<div id="passwdRegMsg" class="error">10~16 자리, 영문/숫자/특수문자(공백
									제외)만 허용하며, 2개 이상 조합</div>
							</td>
						</tr>
						<tr class="member_pwd">
							<th>비밀번호확인</th>
							<td>
								<input type="password" name="repassword" id ="repassword"placeholder="비밀번호를 한번 더 입력해주세요">
								<div id="repasswdMsg" class="error">비밀번호 확인을 입력해 주세요.</div>
								<div id="repasswdMatchMsg" class="error">동일한 비밀번호를 입력해주세요.</div>
							</td>
						</tr>
							</tbody>
						</table>
						
						<div style = "text-align:center;"> 
							<button type="submit" class="btn active btn_join" >확인</button>
							
						</div>
					</form>
				</div>
			</div>
		</div>
	


<script type="text/javascript">
$("#password").focus();
$("#changePwd").submit(function() {
	$(".error").hide();

	var validResult=true;
	
	var id=$("#id").val();
	var idReg=/^[a-zA-Z]\w{5,19}$/g;
	if(id=="") {
		$("#idMsg").show();
		validResult=false;
	} else if(!idReg.test(id)) {
		$("#idRegMsg").show();
		validResult=false;
	} else  {
		$.ajax({
			type: "post",
			url: "member_id_check.jsp",
			data: "id="+id,
			
			async: false,
			dataType: "xml",
			success: function(xmlDoc) {
				var code=$(xmlDoc).find("code").text();
				if(code=="impossible") {
					$("#idDuplMsg").show();
					validResult=false;
				}
			},
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});
	}
	
	
	var passwd=$("#password").val();
	var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	if(passwd=="") {
		$("#passwdMsg").show();
		validResult=false;
	} else if(!passwdReg.test(passwd)) {
		$("#passwdRegMsg").show();
		validResult=false;
	}
	
	var repasswd = $("#repassword").val()
	if(repasswd=="") {
		$("#repasswdMsg").show();
		validResult=false;
	} else if(passwd != repasswd) {
		$("#repasswdMatchMsg").show();
		validResult=false;
	}
	
	
	
	return validResult;
});

</script>
</body>
</html>