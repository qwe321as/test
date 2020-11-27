<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
%>
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

</head>
<body>
	<header class="navbar navbar-fixed-top navbar-inverse"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">CrePass</a> <font
					style="font-weight: bold; color: white; float: right; padding: 15px 15px; font-size: 10px; line-height: 20px;"><%=name%>님
					반갑습니다.</font>
			</div>

			<!-- /.nav-collapse -->
		</div>
		<!-- /.container -->
	</header>
	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">
			<section class="col-xs-12 col-sm-12">
				<div style="margin-bottom: 10px; text-align: center;">
					<font style="text-align: center; color: gray; font-size: 0.5em;">크레파스대부(주)
						대부업2017-금강원-1216[p2p연계대부업]</font>
					<hr>
					<img width="100%" style="float: right;" src="./img/main2.png">
					<br>
					<div style="width: 45%; float: left; margin: 2.2%">
						<button type="button" style="width: 100%"
							class="btn btn-primary btn-lg" onclick="javascript:alert('준비중입니다.');">
							대출하기</button>
					</div>
					<div style="width: 45%; float: left; margin: 2.2%">
						<button type="button" style="width: 100%"
							class="btn btn-secondary btn-lg"
							onclick="location.href='Main.jsp'">투자하기</button>
						<br>
					</div>
			</section>
			<!--/span-->
		</div>
		<!--/row-->
	</div>
	<!--/.container-->
	<hr>
	<footer>
		사업자 정보<br> <br> e-mail : info@crepassplus.com<br>
		크레파스플러스(주) - 플랫폼 사업자<br>​ 사업자등록번호 : 282-87-01688<br> 대표자 :
		강태호<br> 주소 : 서울시 마포구 잔다리로 118, 2층크래파스 고객센터<br> <br> <br>
		크레파스플러스(주) - 여신회사<br>​ 사업자등록번호 : 566-86-00784<br> 대표자 : 윤지영<br>
		주소 : 서울시 마포구 잔다리로 118, 2층 <br> 대부업 2017-금감원-1216(P2P연계대부업)<br>
		대출금리 연19.9%이내 (연체금리 연 24%이내) 플랫폼 이용료 외 취급수수료 등 기타 부대비용은 없습니다.<br>
		중개수수료를 요구하거나 받는 행위는 불법입니다. 과도한 빚은 당신에게 큰 불행을 안겨줄 수 있습니다.<br> 주식회사
		크레파스는 투자원금과 수익을 보장하지 않으며, 투자손실에 대한 책임은 모두 투자자에게 있습니다.<br>
		<hr>
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
