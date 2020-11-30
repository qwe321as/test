<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>main</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./style.css">
<link rel="stylesheet" href="./main.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style type="text/css">
.abc{
width: 100%;
height: auto;
}

</style>
</head>
<body>
	<header class="navbar navbar-fixed-top navbar-inverse"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Main.jsp">CrePass</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="list.jsp">채권리스트</a></li>
							<li ><a href="logout.jsp">로그아웃</a></li>
				</ul>
			</div>
			<!-- /.nav-collapse -->
		</div>
		<!-- /.container -->
	</header>
	<!-- /.navbar -->

	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">
			<section class="col-xs-12 col-sm-12" style="align-content: center;">
				<div class="main2">
				<img class="abc" src="./img/main1.png">
				<!-- 	<div id="slide">
						<ul>
							<li><a href="#"> <img src="./img/main1.png"></a></li>
							<li><a href="#"><img src="./img/main2.png"></a></li>
							<li><a href="#"><img src="./img/main3.png"></a></li>
						
						</ul>
					</div> -->
					<br>
					<table
						style="margin-left: auto; border-spacing: 10px; border-collapse: separate; margin-right: auto; width: 100%; text-align: center; align-content: center;">
						<%
							String[] category = { "학업/자격증", "주거/생활", "취업/창업", "예술", "환경", "여성", "로컬비지니스", "자기개발", "전체보기" };
							out.println("<tr>");
							for (int i = 1; i < (category.length) + 1; i++) {
						%><td class='a'	onclick="location.href='list.jsp?category=<%=category[i - 1]%>'">
							<%
								out.println(category[i - 1]);
									out.println("</td>");
									if (i % 3 == 0) {
										out.println("</tr>");
										out.println("<tr>");
									}

								}
							%>
						
					</table>
				</div>
				<table>
					<tr>
						<td><img src="./img/연필.png" width="25px">
						<td class="b">▶ 청년의 꿈에 직접투자<br> ▶ 100%가 청년에게 투자됩니다.
						</td>
					</tr>
					<tr>
						<td><img src="./img/연필2.png" width="25px"></td>
						<td class="b">▶ 빅데이터 신용평가<br> ▶ (20년 금융전문가의 신용 평가모델)
						</td>
					</tr>
					<tr>
						<td><img src="./img/연필3.png" width="25px">
						<td class="b">▶ 소셜 단체와 함께 임팩트 확장</td>
					</tr>
				</table>
			</section>
		</div>
	</div>
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
		<!-- Placed at the end of the document so the pages load faster -->
	<script src="./js/jquery-1.11.2.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/style.js"></script>
</body>
</html>