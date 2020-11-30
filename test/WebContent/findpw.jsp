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
	function checkLogin() {
		var form = document.loginForm;
		if (form.name.value == "") {
			alert("이름을 입력해 주세요.");
			form.name.focus();
			return false;
		} else if (form.id.value == "") {
			alert("아이디을 입력해 주세요.");
			form.id.focus();
			return false;
		} else if (form.email.value == "") {
			alert("이메일를 입력해 주세요.");
			form.passwd.focus();
			return false;
		}
		alert("비밀번호는 000입니다.");

		form.submit();
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
					<form name="loginForm" method="post" action="login.jsp">
						<table class="logtable">
									<tr>
								<td><img class="img2" alt="이름" src="./img/name.png">&nbsp;이름</td>
							</tr><tr>		<td  class="ma"><input class="box" placeholder="이름을 입력하세요" type="text" name="name"></td>
							</tr>
							<tr>
								<td ><img class="img1" alt="아이디" src="./img/id.png">&nbsp;아이디 
								</td>
							</tr><tr>	<td class="ma"><input class="box" placeholder="아이디를 입력하세요" type="text" name="id"></td>
							</tr>
							<tr>
								<td>
								<img class="img1" alt="이메일" src="./img/이메일.png">&nbsp;이메일</td>
							</tr><tr>		<td class="ma">
							
							<input class="box" type="email" placeholder="이메일을 입력하세주세요" id="email" name="email"></td>
							</tr>
					
						</table>
						<div  style="width: 100%; ">
							<button type="button" style="width: 100%; border-radius: 20px;"
								class="btn btn-primary btn-lg" onclick="checkLogin()"><font style="font-weight:bolder;">비밀번호 찾기</font> </button>
							<br>
						</div>
						<div style="width: 47%; float: left; margin: 1.5%">
							<button type="button" style="width: 100%; border-radius: 20px;"
								class="btn btn-secondary btn-lg"
								onclick="location.href='login.jsp'">로그인</button>
						</div>
						<div style="width: 47%; float: left; margin: 1.5%">
							<button type="button" style="width: 100%; border-radius: 20px;"
								class="btn btn-secondary btn-lg" onclick="location.href='singup.jsp'">회원가입</button>
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
