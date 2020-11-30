<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>main</title>
<link rel="shortcut icon" href="../../assets/ico/favicon.png">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet" href="./style.css">
<script type="text/javascript">
function writeSave(){

	if($('input[name=name]').val()==""){
		alert("이름을 입력하세요");
		$('input[name=name]').focus();
		return false;
	}
	if($('input[name=id]').val()==""){
		alert("아이디를 입력하세요");
		$('input[name=id]').focus();
		return false;
	}

	if($('input[name=password]').val()==""){
		alert("비밀번호를 입력하세요");
		return false;
	}

	if($('input[name=email]').val()==""){
		alert("이메일을 입력하세요");
		return false;
	}
	if($('input[name=phone]').val()==""){
		alert("핸드폰 번호를 입력하세요");
		return false;
	}
	if(puse=="impossible"){
		alert("비밀번호 형식에 맞춰주세요.");
		return false;
	}
	if(resultph=="impossible"){
		alert("핸드폰 번호는 숫자만 입력가능합니다.");
		return false;
	}

	if(pwsame=="비번불일치") {
		alert("비밀번호와 비밀번호확인 불일치");
		return false;
	}

}//writeSave

function passwd_keyup() {

	if($('input[name=password').val()!=$('input[name=repassword').val()){
		$('#pwmessage').html('<font color=red size=1> 비밀번호와 비밀번호확인 불일치</font>');
		$('#pwmessage').show();
		pwsame = "비번불일치";
	}else{
		$('#pwmessage').html('<font color=blue size=1> 비밀번호와 비밀번호확인 일치</font>');
		$('#pwmessage').show();
		pwsame = "비번일치";
	}
}

function phonecheck() {
	var phone = $("#phone").val();
	if(phone.search(/[0-9]/g)){
		alert("핸드폰 번호는 숫자만 입력가능합니다.");
	resultph = "impossible";
	}else {
		resultph= "possible";
	}

}
function pwcheck() {
	var pw = $("#password").val();
	var num = pw.search(/[0-9]/g);
	var eng = pw.search(/[a-z]/ig);
	var Eng = pw.search(/[A-Z]/ig);
	if(pw.length < 3 || pw.length > 9){
		alert("3자리 ~ 9자리 이내로 입력해주세요.");
		puse = "impossible";
	}
	else if(pw.search(/\s/) != -1){
		alert("비밀번호는 공백 없이 입력해주세요.");
		puse = "impossible";

	}
	else if(num < 0 || eng < 0 || Eng<0){
		alert("영문,숫자 를 혼합하여 입력해주세요.");
		puse = "impossible";
	}else {
		puse = "possible";
	}

}


</script>
<style type="text/css">
.box {
	border: none;
	background-color: rgb(232, 240, 254);
	width: 100%;
	border-radius: 10px;
	height: 40px;
}
table{
width: 100%;
margin-bottom: 10%;
}
td{
	padding-top : 1em;
}
.img1{
height: 30px;
}
.ma
{
padding : 0.4em;
}
.img2{
height: 25px;
}
</style>
</head>
<body>
	<header class="navbar navbar-fixed-top navbar-inverse"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">CrePass</a>
			</div>

			<!-- /.nav-collapse -->
		</div>
		<!-- /.container -->
	</header>
	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">
			<section class="col-xs-12 col-sm-12">
				<div style="margin-bottom: 10px;">
					<img width="100%" style="float: right; margin-bottom: 20px" src="./img/bg.png"> <br>
					<form name="loginForm" method="post" action="login.jsp" onsubmit="return writeSave()">
						<table class="logtable">
							<tr>
								<td><img class="img2" alt="이름" src="./img/name.png">&nbsp;이름</td>
							</tr><tr>		<td  class="ma"><input class="box" placeholder="이름을 입력하세요" type="text" name="name"></td>
							</tr>
							<tr>
								<td ><img class="img1" alt="아이디" src="./img/id.png">&nbsp;아이디 
							<a href="#" onclick="alert('준비중입니다.')">	<font style="float: right; font-size: 5px;  color: gray;">중복체크&nbsp;</font> 
								</a></td>
							</tr><tr>	<td class="ma"><input class="box" placeholder="아이디를 입력하세요" type="text" name="id"></td>
							</tr>
							<tr>
								<td>
								<font style="float: right; font-size: 5px; color: gray;">영문 대소문자/숫자 조합 3~8자 &nbsp;</font> 
								<img class="img1" alt="비밀번호" src="./img/pw.png">&nbsp;비밀번호</td>
							</tr><tr>		<td class="ma">
							
							<input class="box" type="password" placeholder="비밀번호를 입력하세요"  onBlur="pwcheck()" id="password" onkeyup="passwd_keyup()" name="password"></td>
								
							</tr>
							<tr>
								<td><img class="img1" alt="비밀번호 확인" src="./img/pw.png">&nbsp;비밀번호 확인 
								<span id="pwmessage"
						style="display: none; position: relative; float: right;" ></span>
								</td>
							</tr><tr>		<td class="ma"><input class="box" onkeyup="passwd_keyup()" type="password" placeholder="비밀번호를 입력하세요" name="repassword"></td>
								
							</tr>
							<tr>
								<td><img class="img1" alt="이메일" src="./img/이메일.png">&nbsp;이메일</td>
								</tr><tr>	<td class="ma"><input class="box" type="email" placeholder="이메일을 입력하세요" name="email"></td>
								
							</tr>
							<tr>
								<td><img class="img1" alt="핸드폰번호" src="./img/핸드폰.png">핸드폰
								<span id="phone_num"
						style="display: none; position: relative; float: right;" ></span></td>
							</tr><tr>		<td class="ma"><input class="box" type="text" onBlur="phonecheck()" placeholder="핸드폰 번호를를 입력하세요" id="phone" name="phone"></td>
								
							</tr>
						</table>
						<div  style="width: 100%; ">
							<button type="submit" style="width: 100%; border-radius: 20px;"
								class="btn btn-primary btn-lg" ><font style="font-weight:bolder;">회원가입하기</font> </button>
							<br>
						</div>
						<div style="width: 47%; float: left; margin: 1.5%">
							<button type="button" style="width: 100%; border-radius: 20px;"
								class="btn btn-secondary btn-lg"
								onclick="location.href='login.jsp'">로그인하기</button>
						</div>
						<div style="width: 47%; float: left; margin: 1.5%">
							<button type="button" style="width: 100%; border-radius: 20px;"
								class="btn btn-secondary btn-lg" onclick="location.href='findpw.jsp'">비밀번호 찾기</button>
							<br>
						</div>
					</form>
			</div>
			</section>
			<!--/span-->
		</div>
		<!--/row-->
	</div>
	<!--/.container-->
	<hr>
	<footer>
		<div style="text-align: center;">개인정보취급방침 | 서비스이용약관 | 투자이용약관 |
			회사소개</div>
	</footer>
	<!-- Bootstrap core JavaScript
		<!-- Placed at tde end of tde document so tde pages load faster -->
	<script src="./js/jquery-1.11.2.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/style.js"></script>
</body>
</html>
