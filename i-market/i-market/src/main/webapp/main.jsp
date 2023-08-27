<%@page import="java.text.DecimalFormat"%>
<%@page import="com.main.model.t_iteminfoDAO"%>
<%@page import="com.main.model.t_iteminfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="com.smhrd.model.board.BoardInfoDAO"%>
<%@page import="com.smhrd.model.board.BoardInfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.news.NewsInfoDAO"%>
<%@page import="com.smhrd.model.news.NewsInfoDTO"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>

<html>
<head>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap"
	rel="stylesheet">



<title>i-market</title>
<script src="https://kit.fontawesome.com/7b42c1f2dd.js"></script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />



<style type="text/css">

/* Button */
input[type="submit"], input[type="reset"], button, .button {
	-webkit-appearance: none !important;
	display: inline-block;
	text-decoration: none;
	cursor: pointer;
	border: 0;
	border-radius: 5px;
	background: #217214a3;
	color: #FFf;
	font-weight: 700;
	outline: 0;
	font-size: 1.1em;
	padding: 0.4em 1em 0.4em 1em;
	text-align: center;
	-moz-transition: background-color .25s ease-in-out;
	-webkit-transition: background-color .25s ease-in-out;
	-ms-transition: background-color .25s ease-in-out;
	transition: background-color .25s ease-in-out;
}

input[type="button"] {
	-webkit-appearance: none;
	display: inline-block;
	text-decoration: none;
	cursor: pointer;
	border: 0;
	border-radius: 5px;
	background: rgb(235, 225, 15);
	color: #FFf;
	font-weight: 700;
	outline: 0;
	font-size: 1.1em;
	padding: 0.4em 1em 0.4em 1em;
	text-align: center;
	-moz-transition: background-color .25s ease-in-out;
	-webkit-transition: background-color .25s ease-in-out;
	-ms-transition: background-color .25s ease-in-out;
	transition: background-color .25s ease-in-out;
}

button:hover, .button:hover {
	background: rgb(235, 225, 15);
}

input[type="button"]:hover, input[type="submit"]:hover, input[type="reset"]:hover
	{
	background: #217214a3;
}

input[type="button"]:active, input[type="submit"]:active, input[type="reset"]:active,
	button:active, .button:active {
	background: rgb(235, 225, 15);
}

input[type="button"].alt:hover, input[type="submit"].alt:hover, input[type="reset"].alt:hover
	{
	background: #217214a3;
}

input[type="button"].alt, input[type="submit"].alt, input[type="reset"].alt,
	button.alt, .button.alt {
	background: #f97777;
}

button.alt:hover, .button.alt:hover {
	background: rgb(235, 225, 15);
}

input[type="button"].icon:before, input[type="submit"].icon:before,
	input[type="reset"].icon:before, button.icon:before, .button.icon:before
	{
	opacity: 0.35;
	position: relative;
	top: 0.05em;
	margin-right: 0.75em;
}

input[type="button"].large, input[type="submit"].large, input[type="reset"].large,
	button.large, .button.large {
	font-size: 1.5em;
	padding: 0.5em 1em 0.5em 1em;
}

/*@font-face {
    font-family: 'Dovemayo_gothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
*/
@font-face {
	font-family: 'Hi Melody', cursive;
	src:
		url('https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap');
	font-weight: normal;
	font-style: normal;
}

body {
	/* font-family: 'Hi Melody', cursive;*/
	background: var(--background);
	color: var(--color);
}

.index_01 {
	font-family: 'Hi Melody', cursive !important;
	color: #f2ec1d !important;
	font-size: 80px !important;
	font-style: normal !important;
	font-weight: 100 !important;
	text-shadow: 1px 0 10px #110f10 !important;
}

#nav>ul>li {
	position: relative !important;
	padding-left: 15px !important;
	padding-right: 15px !important;
}

#nav>ul>li.current>a {
	background: #217214a3 !important;
	color: #fff !important !important;
	font-weight: 700 !important;
}

#footer a {
	color: #fff !important;
}


html, body, div, span, applet, object, iframe, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	font-family: 'Hi Melody', cursive !important;
}
</style>

</head>



<body class="homepage is-preload"
	style="font-family: 'Hi Melody', cursive;">





	<%
	// session값 가져오기
	String user_id = (String) session.getAttribute("user_id");
	WebMemberDTO loginMember = (WebMemberDTO) session.getAttribute("loginMember");
	if (loginMember != null) {
		System.out.print(loginMember.getUser_id());
	}
	%>






	<div class="row">
		<div class="col-12" align="right">
			<%
			if (loginMember == null) {
			%>
			<a href="user/join.jsp"> <input type="button"
				class="btn float-right" value="Join">
			</a> <a href="user/login.jsp"> <input type="button"
				class="btn float-right" value="Login">
			</a>
			<%
			} else {
			if (loginMember.getUser_id().equals("admin")) {
			%>
			<a href="select.jsp"><input type="button" class="btn float-right"
				value="전체회원정보"></a>
			<%
			}
			%>
			<a href="Logout"><input type="button" class="btn float-right"
				value="Logout"></a>
			<%
			}
			%>

		</div>
	</div>








	<!-- Header -->
	<section id="header">

		<!-- Logo -->
		<div>
			<h1>
				<a class="index_01" href="main.jsp">아이 i 마켓</a>
			</h1>
		</div>

		<div>
			<span>유아용품전용 중고거래 플랫폼</span>
		</div>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="current"><a href="main.jsp">홈</a></li>
				<li><a href="item/itemListMain.jsp">전체보기</a>
					<ul>
						<li><a href="item/itemListSearch.jsp?itemCategoryKey=유아동용품">유아동용품</a></li>
						<li><a
							href="item/itemListSearch.jsp?itemCategoryKey=유아동신발%2F잡화">유아동
								신발/잡화</a></li>
						<li><a
							href="item/itemListSearch.jsp?itemCategoryKey=교육%2F완구%2F인형">교육/완구/인형</a></li>
						<li><a
							href="item/itemListSearch.jsp?itemCategoryKey=베이비의류%280-2세%29">유아동의류</a>
							<ul>
								<li><a
									href="item/itemListSearch.jsp?itemCategoryKey=베이비의류%280-2세%29">베이비의류(0-2세)</a></li>
								<li><a
									href="item/itemListSearch.jsp?itemCategoryKey=여아의류%283-6세%29">여아의류(3-6세)</a></li>
								<li><a
									href="item/itemListSearch.jsp?itemCategoryKey=여주니어의류%287세~%29">여주니어의류(7세~)</a></li>
								<li><a
									href="item/itemListSearch.jsp?itemCategoryKey=남아의류%283-6세%29">남아의류(3-6세)</a></li>
								<li><a
									href="item/itemListSearch.jsp?itemCategoryKey=남주니어의류%287세~%29">남주니어의류(7세~)</a></li>

							</ul></li>
						<li><a
							href="item/itemListSearch.jsp?itemCategoryKey=출산%2F임부용품">출산/임부용품</a></li>
						<li><a
							href="item/itemListSearch.jsp?itemCategoryKey=이유용품%2F유아식기">이유용품/유아식기</a></li>
					</ul></li>
				<li><a href=<%if (user_id != null) {%>
					<%="item/uploadItemBoard.jsp"%> <%} else {%> <%="user/login.jsp"%>
					<%}%>>판매하기</a></li>
				<li><a href="boardController?pagebutton=1">게시판</a></li>
				<li><a href="ShowNewsService">NEWS</a></li>
				<li><a href=<%if (user_id != null) {%> <%="user/myPage.jsp"%>
					<%} else {%> <%="user/login.jsp"%> <%}%>>마이페이지</a></li>
			</ul>
		</nav>

		<!-- Banner -->


		<section id="banner" style="padding: 100px">
			<header>
				<h2 class="f">우리아이 중고 직거래 마켓</h2>
				<p>중고 거래부터 동네 정보까지, 이웃과 함께해요. 가깝고 따뜻한 당신의 근처를 만들어요.</p>
			</header>
		</section>


		<!-- Intro -->
		<section id="intro" class="container">
			<div class="row">
				<div class="col-4 col-12-medium">
					<section class="first">

						<header>
							<img alt="" class="icon solid featured" src="images/이미지8.jpg">
							<h2>유아동 잡화</h2>
						</header>
						<p>Nisl amet dolor sit ipsum veroeros sed blandit consequat
							veroeros et magna tempus.</p>
					</section>
				</div>
				<div class="col-4 col-12-medium">
					<section class="middle">
						<header>
							<img alt="" class="icon featured" src="images/이미지9.jpg">
							<h2>유아동 도서</h2>
						</header>
						<p>Nisl amet dolor sit ipsum veroeros sed blandit consequat
							veroeros et magna tempus.</p>
					</section>
				</div>
				<div class="col-4 col-12-medium">
					<section class="last">
						<header>
							<img alt="" class="icon featured after" src="images/이미지7.jpg">
							<h2>완구/장난감/인형</h2>
						</header>
						<p>Nisl amet dolor sit ipsum veroeros sed blandit consequat
							veroeros et magna tempus.</p>
					</section>
				</div>
			</div>
			<footer>
				<ul class="actions">
					<li><a href="item/itemListMain.jsp" class="button large">전체상품보기</a></li>
				</ul>
			</footer>
		</section>

		<!-- Main -->
		<section id="main">
			<div class="container">
				<div class="col-12">

					<!-- 많이 본 상품 -->
					<%
					List<t_iteminfoDTO> item_list = new t_iteminfoDAO().showItemHit();
					%>
					<section>
						<header class="major">
							<h2>가장 많이 본 상품</h2>
						</header>
						<div class="row">
							<%
							for (int i = 0; i < 3; i++) {
							%>
							<div class="col-4 col-6-medium col-12-small">
								<section class="box">
									<div>
									<a href="item/itemPhotoDetail.jsp?item_idx=<%=item_list.get(i).getItem_idx()%>" class="image featured"><img
										src="photo/<%=item_list.get(i).getItem_photo()%>" alt="" /></a>
										</div>
									<header>
										<h3><%=item_list.get(i).getItem_name()%></h3>
									</header>
									<p>
										가격 : <%
										int upPrice = item_list.get(i).getItem_price();
										DecimalFormat decimalFormat = new DecimalFormat("#,###");
										String formattedPrice = decimalFormat.format(upPrice);
										%>
										<%=formattedPrice %>
										원<br>
										조회수 :
										<%=item_list.get(i).getItem_view()%></p>
									<footer>
										<ul class="actions">
											<li><a href="itemViewUpService?item_idx=<%=item_list.get(i).getItem_idx()%>" class="button alt">상품보기</a></li>
										</ul>
									</footer>
								</section>
							</div>
							<%
							}
							%>
						</div>
					</section>
				</div>
			</div>
		</section>

		</div>
		<div class="col-12">

			<!-- Blog -->
			<section>
				<header class="major">
					<h2>추천 게시글</h2>
				</header>
				<div class="row">

					<%
					BoardInfoDAO b_dao = new BoardInfoDAO();
					List<BoardInfoDTO> listMain = (List<BoardInfoDTO>) b_dao.showBoardMain();
					%>
					<%
					for (int i = 0; i < 2; i++) {
					%>
					<div class="col-6 col-12-small"
						style="text-align: center; width: 35%; margin-left: 155px;">
						<section class="box">
							<a href="#" class="image featured"><img
								src="images/pic08.jpg" alt=""
								style="display: block; margin: auto;"></a>
							<header>
								<h3><%=listMain.get(i).getB_title()%></h3>
								<p><%=listMain.get(i).getUser_nick()%></p>
							</header>
							<p><%=listMain.get(i).getB_content()%></p>
							<footer>
								<ul class="actions">
									<li><a
										href="board/boardDetail.jsp?board_idx=<%=listMain.get(i).getB_idx()%>"
										class="button icon solid">게시글보기</a></li>
								</ul>
							</footer>
						</section>
					</div>
					<%
					}
					%>
				</div>
			</section>

		</div>
		</div>
		</div>
	</section>

	<!-- Footer -->
	<section id="footer">
		<div class="container">
			<div class="row">
				<div class="col-8 col-12-medium">
					<section>
						<header>

							<h2>최신뉴스</h2>
						</header>
						<ul class="dates">
							<%
							NewsInfoDAO dao = new NewsInfoDAO();
							List<NewsInfoDTO> list_news = dao.showNews();
							%>

							<%
							for (int i = 0; i < 5; i++) {
							%>
							<li><span class="date"><%=list_news.get(i).getN_date().substring(0, 10)%><strong><%=list_news.get(i).getN_date().substring(10, 16)%></strong></span>
								<h3>
									<a href="<%=list_news.get(i).getN_url()%>"><%=list_news.get(i).getN_title()%></a>
								</h3>
								<p><%=list_news.get(i).getN_content()%></p></li>
							<%
							}
							%>

						</ul>
					</section>
				</div>
				<div class="col-4 col-12-medium">
					<section>
						<header>
							<h2>What's this all about?</h2>
						</header>
						<a href="#" class="image featured"><img src="images/pic10.jpg"
							alt="" /></a>
						<p>
							This is <strong>Dopetrope</strong> a free, fully responsive HTML5
							site template by <a href="http://twitter.com/ajlkn">AJ</a> for <a
								href="http://html5up.net/">HTML5 UP</a> It's released for free
							under the <a href="http://html5up.net/license/">Creative
								Commons Attribution</a> license so feel free to use it for any
							personal or commercial project &ndash; just don't forget to
							credit us!
						</p>
						<footer>
							<ul class="actions">
								<li><a href="ShowNewsService" class="button">NEWS 전체보기</a></li>
							</ul>
						</footer>
					</section>
				</div>
				<div class="col-4 col-6-medium col-12-small">
					<section>
						<header>
							<h2>Tempus consequat</h2>
						</header>
						<ul class="divided">
							<li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
							<li><a href="#">Sed et blandit consequat sed tlorem
									blandit</a></li>
						</ul>
					</section>
				</div>
				<div class="col-4 col-6-medium col-12-small">
					<section>
						<header>
							<h2>Ipsum et phasellus</h2>
						</header>
						<ul class="divided">
							<li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
							<li><a href="#">Sed et blandit consequat sed tlorem
									blandit</a></li>
						</ul>
					</section>
				</div>
				<div class="col-4 col-12-medium">
					<section>
						<header>
							<h2>Vitae tempor lorem</h2>
						</header>
						<ul class="social">
							<li><a class="fa fa-facebook-f" href="#"><span
									class="label"></span></a></li>
							<li><a class="fa fa-twitter" href="#"><span
									class="label"></span></a></li>
							<li><a class="fa fa-instagram" href="#"><span
									class="label"></span></a></li>
							<li><a class="fa fa-google" href="#"><span class="label"></span></a></li>
						</ul>
						<ul class="contact">
							<li>
								<h3>Address</h3>
								<p>광주 서구 경열로 20 3,4층</p>
							</li>
							<li>
								<h3>Mail</h3>
								<p>
								<p>smhrd@smhrd.or.kr</p>
								</p>
							</li>
							<li>
								<h3>Phone</h3>
								<p>062)655-3510</p>
							</li>
						</ul>
					</section>
				</div>
				<div class="col-12">

					<!-- Copyright -->
					<div id="copyright">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li>
							<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>

				</div>
			</div>
	</section>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>


</body>
</html>