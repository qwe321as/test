<%@page import="list.contentdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="list.content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String category = request.getParameter("category");
	contentdao dao = new contentdao();
	ArrayList<content> list = dao.contents();
	boolean islike = false;
%>
<%@include file="listTop.jsp"%>
<style type="text/css">
.graph {
	position: relative;
	width: 100%;
	border: 1px solid #3196ff;
	padding: 2px;
	font-size: 11px;
	font-family: tahoma;
	margin-bottom: 10px;
	border-radius: 20px;
}

.graph .bar {
	border-radius: 20px;
	display: block;
	position: relative;
	background: #3196ff;
	text-align: center;
	color: #333;
	height: 2em;
	line-height: 2em;
}

.graph .bar span {
	position: absolute;
	left: 1em;
}

table {
	width: 100%;
}
</style>
<script type="text/javascript">

	function hehe() {
		if (document.searchForm.search.value == "") {
			alert("입력한 값이 없습니다.");
			document.searchForm.search.focus();
			return false;
		}else{
			alert("준비중 입니다.")
			return false;
		}
		document.searchForm.submit();
	}
	$('#like').on('click',function(){
		if (islike) {
			$('#like').html("<img role='button' src='./img/빈별.png' width='40px' height='40px'>");
			islike = false;
		}else if (!islike) {
			$('#like').html("<img role='button' src='./img/체워진별.png' width='40px' height='40px'>");
			islike = true;
			
		}
	});
/*  	function star(num) {
		alert(num);
		if (num==0) {
			num=1;
			alert('별클릭');
			alert(num);
		} else {
			alert('별두번클릭');
		}
	} */ 
</script>
<div class="container">
	<div class="row row-offcanvas row-offcanvas-right">
		<section class="col-xs-12 col-sm-12">
			<div style="margin-bottom: 10px">
				<font style="font-weight: bolder; font-size: 1.5em;"> <%
 	if (category == null) {
 %> 전체보기 <%
 	} else {
 %> <%=category%> <%
 	}
 %>
				</font>
			</div>
			<div>
				<form method="post" name="searchForm" action="#">
					<input type="text" style="width: 85%; border-radius: 15px;"
						name="search" placeholder="검색할 내용을 입력하세요."> <img
						style="width: 35px; " alt="검색" src="./img/돋보기2.png"
						onclick="hehe()">
				</form>
			</div>
			<hr>
			<table>
				<%
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td rowspan="3">	
						<div id="like" style="width: 35px; height : 35px;"><img role='button' src='./img/빈별.png' width='40px' height='40px'></div>
					</td>
					<td style="font-weight: bold;">
						<% if(i%2==0){ %> <a href="listDe.jsp"><%=list.get(i).getTitle()%>
					</a> <%}else{%> <a href="listDe2.jsp"><%=list.get(i).getTitle()%> </a> <%} %>
					</td>
				</tr>
				<tr>
					<td style="color: gray; font-size: 10px;"><%=list.get(i).getRetitle()%></td>
				</tr>
				<tr>
					<td>
						<div class="graph">
							<strong class="bar" style="width: <%=list.get(i).getGrap()%>%;"><%=list.get(i).getGrap()%>%</strong>
						</div>
					</td>
				</tr>

				<%
					}
				%>

			</table>

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
		<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.11.2.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/style.js"></script>
</body>
</html>
