<%@page import="java.text.DecimalFormat"%>
<%@page import="com.main.model.t_iteminfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.main.model.t_iteminfoDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="com.main.model.WebMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap"
	rel="stylesheet">




<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<style type="text/css">
.profile1 {
	text-align: center;
	width: 120px;
	height: 120px;
	border-radius: 70%;
	overflow: hidden;
	margin-left: 150px;
}

.profile3 {
	max-width: 150px;
	max-height: 150px;
}

input[type="submit"], button, .button {
	padding: 0.05em 0.5em 0.05em 0.5em;
}

/* Button */
input[type="submit"], input[type="reset"], button, .button{
	-webkit-appearance: none;
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

#button1, #button2 , input[type="button"].chat {
	-webkit-appearance: none;
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

#button1, #button2 {
	-webkit-appearance: none;
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

#button1:hover, #button2:hover, input[type="button"].chat:hover {
	background: rgb(235, 225, 15);
}

button:hover, .button:hover {
	background: rgb(235, 225, 15);
}

input[type="button"]:hover, input[type="submit"]:hover, input[type="reset"]:hover, .chat:hover
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
	font-family: 'Hi Melody', cursive;
	background: var(--background);
	color: var(--color);
}

.index_01 {
	font-family: 'Hi Melody', cursive;
	color: #f2ec1d;
	font-size: 80px;
	font-style: normal;
	font-weight: 100;
	text-shadow: 1px 0 10px #110f10;
}

#nav>ul>li {
	position: relative;
	padding-left: 15px;
	padding-right: 15px;
}

#nav>ul>li.current>a {
	background: #217214a3;
	color: #fff !important;
	font-weight: 700;
}

#footer a {
	color: #fff;
}

html, body, div, span, applet, object, iframe, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	font-family: 'Hi Melody', cursive;
}
.chat {
font-family: 'Hi Melody', cursive;
}
</style>
</head>
<body class="no-sidebar is-preload"
	style="font-family: 'Hi Melody', cursive;">
	<script type="text/javascript">
		function openPop() {
			var popup = window
					.open('../chat/Chat01.jsp', '채팅',
							'width=700px,height=800px,scrollbars=no,menubar=0,location=no');
		}
	</script>
	<%
	String user_id = (String) session.getAttribute("user_id");
	WebMemberDTO dto = new WebMemberDTO(user_id);
	WebMemberDAO dao = new WebMemberDAO();
	WebMemberDTO profile = dao.selectMeMember(dto);
	System.out.print(profile);
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
	<div id="page-wrapper">




		<!-- Header -->
		<section id="header"> <!-- Logo -->
		<div>
			<h1>
				<a class="index_01" style="font-family: 'Hi Melody', cursive;"
					href="../main.jsp">아이 i 마켓</a>
			</h1>
		</div>

		<div>
			<span>유아용품전용 중고거래 플랫폼</span>
		</div>

		<!-- Nav --> <nav id="nav">
		<ul>
			<li class="current"><a href="../main.jsp">홈</a></li>
			<li><a href="../item/itemListMain.jsp">전체보기</a>
				<ul>
					<li><a href="#">유아동용품</a></li>
					<li><a href="#">유아동잡화</a></li>
					<li><a href="#">유아동도서</a></li>
					<li><a href="#">완구/장난감/인형</a></li>
					<li><a href="#">유아동의류</a>
						<ul>
							<li><a href="#">남아의류</a></li>
							<li><a href="#">여아의류</a></li>

						</ul></li>
					<li><a href="#">기타</a></li>
				</ul></li>
			<li><a href="../item/uploadItemBoard.jsp">판매하기</a></li>
			<li><a href="../boardController?pagebutton=1">게시판</a></li>
			<li><a href="../ShowNewsService">NEWS</a></li>
			<li class="current"><a href="myPage.jsp">마이페이지</a></li>
		</ul>
		</nav> <!-- Main --> <section id="main">
		<div class="container">
			<section>
			<div class="profile1" style="float: left; margin-right: 10px">
				<%
				if (profile.getUser_profile() == null) {
				%>
				<img src="../images/basic_profile.png" class="profile3" alt="" />
				<%
				} else {
				%>
				<img src="../file/<%=profile.getUser_profile()%>" class="profile3"
					alt="" style="width: 350px; height: 350px;" />
				<%
				}
				%>
			</div>
			</section>
			
				
				<!-- Main --> <section id="main">
				<div class="container">
					<section>
					<div class="profile1" style="float: left; margin-right: 10px">
						<%
						if (profile.getUser_profile() == null) {
						%>
						<img src="../images/basic_profile.png" class="profile3" alt="" />
						<%
						} else {
						%>
						<img src="../file/<%=profile.getUser_profile()%>"
							class="profile3" alt="" style="width: 350px; height: 350px;" />
						<%
						}
						%>
					</div>
					</section>
					<div style="">
						<section>
						<div style="padding-right: 410px;">
							<font size=5>ID : <%=profile.getUser_id()%></font>
						</div>
						<br>
						<div style="padding-right: 410px;">
							<font size=5>닉네임 : <%=profile.getUser_nick()%></font>
						</div>
						<br>
						<div style="padding-right: 360px;">
							<font size=5>전화번호 : <%=profile.getUser_phone()%></font>
						</div>
						<br>
						<div>
							<font size=5 style="padding-left: 290px;">주소 : <%=profile.getUser_addr()%></font>
						</div>
						<br>
					
				<div style="">
							<input type="button" value="내 채팅보기" onclick="openPop()" class="chat">
					<!-- 쿼리스트링 방식 : url?name=value&name=value -->
					<a href="update.jsp?id=<%=profile.getUser_id()%>"> <input
						type="button" id="button1" value="개인정보수정" class="button fit"
						style="font-family: 'Hi Melody', cursive;">
					</a>
					<a href="main.jsp" style=""> <input
						type="button" id="button2" value="되돌아가기" class="button fit"
						style="font-family: 'Hi Melody', cursive;">
					</a>
				</div>
						</section>
					</div>
				</div>
						<section id="main">
						<div class="container">
							<div class="col-12">

								<!-- 판매중 상품 -->
								<%
								List<t_iteminfoDTO> item_list = new t_iteminfoDAO().showItemMy(user_id);
								System.out.println("진입 성공 리스트 사이즈 : " + item_list.size());
								%>
								<section> <header class="major">
								<h2>내 판매 상품</h2>
								</header>
								<div class="row">
									<%
									for (int i = 0; i < item_list.size(); i++) {
									%>
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
										<div>
											<a
												href="../item/itemPhotoDetail.jsp?item_idx=<%=item_list.get(i).getItem_idx()%>"
												class="image featured"><img
												src="../photo/<%=item_list.get(i).getItem_photo()%>" alt="" /></a>
										</div>
										<header>
										<h3><%=item_list.get(i).getItem_name()%></h3>
										</header>
										<p>
											가격 :
											<%
										int upPrice = item_list.get(i).getItem_price();
										DecimalFormat decimalFormat = new DecimalFormat("#,###");
										String formattedPrice = decimalFormat.format(upPrice);
										%>
											<%=formattedPrice%>
											원<br> 조회수 :
											<%=item_list.get(i).getItem_view()%></p>
										<footer>
										<ul class="actions">
											<li><a
												href="../itemViewUpService?item_idx=<%=item_list.get(i).getItem_idx()%>"
												class="button alt">상품보기</a></li>
										</ul>
										</footer> </section>
									</div>
									<%
									}
									%>
								</div>
								</section>
							</div>
						</div>
						</section>
				<div style="clear: both"></div>
				</section>
			</div>

		</div>
		
		<div style="clear: both"></div>
		</section> <!-- Copyright -->
		<div id="copyright">
			<ul class="links">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
	</div>
	</section>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</body>
</html>