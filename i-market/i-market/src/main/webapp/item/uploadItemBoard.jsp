<%@page import="com.main.model.WebMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">

<title>Insert title here</title>
<script src="https://kit.fontawesome.com/7b42c1f2dd.js" ></script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/itemList_young.css" />
<script type="text/javascript" src="upload.js"></script>
<script type="../assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="assets/css/main.css" />



<style type="text/css">



/* Button */

	
	input[type="submit"],
	input[type="reset"],
	button,
	.button {
		-webkit-appearance: none;
		display: inline-block;
		text-decoration: none;
		cursor: pointer;
		border: 0;
		border-radius: 5px;
		background:	#217214a3;
		color: 	#FFf;
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
	
	input[type="button"]{
	
	-webkit-appearance: none;
		display: inline-block;
		text-decoration: none;
		cursor: pointer;
		border: 0;
		border-radius: 5px;
		background:	rgb(235, 225, 15);
		color: 	#FFf;
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
	
	
	
	button:hover,
		.button:hover
		{
		
		background: rgb(235, 225, 15);
		}

		input[type="button"]:hover,
		input[type="submit"]:hover,
		input[type="reset"]:hover
		 {
			background: #217214a3;
		}

		input[type="button"]:active,
		input[type="submit"]:active,
		input[type="reset"]:active,
		button:active,
		.button:active {
			background: rgb(235, 225, 15);
		}
		
		
		input[type="button"].alt:hover,
			input[type="submit"].alt:hover,
			input[type="reset"].alt:hover{
			
			background: #217214a3;
			
			}
		
		

		input[type="button"].alt,
		input[type="submit"].alt,
		input[type="reset"].alt,
		button.alt,
		.button.alt {
			background:#f97777;
		}

			button.alt:hover,
			.button.alt:hover {
				background: rgb(235, 225, 15);
			}


		input[type="button"].icon:before,
		input[type="submit"].icon:before,
		input[type="reset"].icon:before,
		button.icon:before,
		.button.icon:before {
			opacity: 0.35;
			position: relative;
			top: 0.05em;
			margin-right: 0.75em;
		}

		input[type="button"].large,
		input[type="submit"].large,
		input[type="reset"].large,
		button.large,
		.button.large {
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
    src: url('https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap');
    font-weight: normal;
    font-style: normal;



}

body{



/* font-family: 'Hi Melody', cursive;*/
  background: var(--background);
  color: var(--color);
}
.index_01{

	font-family:'Hi Melody', cursive;
	color:#f2ec1d;
	font-size: 80px;
	font-style: normal;
	font-weight: 100;
	text-shadow: 1px 0 10px #110f10;

}



#nav > ul > li {
	position:relative; 
	padding-left: 15px;
	padding-right: 15px;
	
}


#nav > ul > li.current > a {
    background: #217214a3;
    color: #fff !important;
    font-weight: 700;
}





#footer a {
			color: #fff;
		}

html, body, div, span, applet, object,
iframe, h2, h3, h4, h5, h6, p, blockquote,
pre, a, abbr, acronym, address, big, cite,
code, del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var, b,
u, i, center, dl, dt, dd, ol, ul, li, fieldset,
form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td, article, aside,
canvas, details, embed, figure, figcaption,
footer, header, hgroup, menu, nav, output, ruby,
section, summary, time, mark, audio, video {

	font-family:'Hi Melody', cursive;
}

.row.login {
	padding: 0  !important;
	width: 80%  !important;
	margin: 0 0 0 -30px !important;
}
.row > .col-12 {
	padding: 0  !important;
}
section {
	margin-top: 0 !important;
}

</style>
</head>
<body>
<body class="homepage is-preload" style="font-family: 'Hi Melody', cursive;">
	<%
	String user_id = (String) session.getAttribute("user_id");
	WebMemberDTO loginMember = (WebMemberDTO) session.getAttribute("loginMember");
	%>
	<section>
		<div class="row login">
			<div class="col-12" align="right">
				<%if(loginMember==null) { %>
					<a href="../user/join.jsp">
						<input type="button" class="btn float-right" value="Join">
					</a>
					<a href="../user/login.jsp">
						<input type="button" class="btn float-right" value="Login">
					</a>
				<%} else { 
					if(loginMember.getUser_id().equals("admin")){%>
						<a href="select.jsp"><input type="button" class="btn float-right" value="전체회원정보"></a>
					<%} %>
						<a href="Logout"><input type="button" class="btn float-right" value="Logout"></a>
				<%} %>
			</div>
		</div>
		<!-- Header -->
		<section id="header">
		
		
		<!-- Logo -->
		<h1>
			<a class="index_01" href="../main.jsp">아이 i 마켓</a>
		</h1>
		<span>유아용품전용 중고거래 플랫폼</span>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="../main.jsp">홈</a></li>
				<li><a href="itemListMain.jsp">전체보기</a>
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
				<li class="current"><a href=
				<%if (user_id != null) {%>
					<%="uploadItemBoard.jsp"%>
				<%}else {%>
					<%= "../user/login.jsp"%>					
				<% } %>
					>판매하기</a></li>
					<li><a href="../boardController?pagebutton=1">게시판</a></li>
					<li><a href="../ShowNewsService">NEWS</a></li>
					<li><a href=
				<%if (user_id != null) {%>
					<%="../user/myPage.jsp"%>
				<%}else {%>
					<%= "../user/login.jsp"%>					
				<% } %>
					>마이페이지</a></li>
				</ul>
		</nav>

	</section>
	
	
	<div class="sc-fHSTwm jSFmce">
		<div class="ProductNewstyle__Wrapper-sc-7fge4a-0 hvgCyR">
			<form action="../uploaditemService" method="post"
				enctype="multipart/form-data">
				<main class="ProductNewstyle__Main-sc-7fge4a-1 VvECz">
					<section class="ProductNewstyle__Basic-sc-7fge4a-2 lmrVST">
						<h2>기본정보</h2>
						<ul class="ProductNewstyle__Groups-sc-7fge4a-3 fSSAPi">
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp">
								<div class="ProductNewstyle__Label-sc-7fge4a-5 bFQfPj">
									상품이미지</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH image">
									<ul class="sc-eEieub ljAqnv">
										<li class="sc-RbTVP dOJAXa"><img src="" class="thumb"
											onerror="this.src='../photo/photoBefore.JPG'" /> <input
											type="file" id="imageSelector" name="item_photo"
											accept="image/jpeg, image/jpg, image/png" multiple /></li>
									</ul>
								</div>
							</li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp">
								<div class="ProductNewstyle__Label-sc-7fge4a-5 gvWKtv">제목
								</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<div class="ProductNewstyle__TitleWrapper-sc-7fge4a-9 heHZUo">
										<div class="ProductNewstyle__WithDeleteAll-sc-7fge4a-7 bofJgA">
											<input type="text" placeholder="상품 제목을 입력해주세요."
												class="ProductNewstyle__NameInput-sc-7fge4a-10 lnslOO"
												name="item_name">
										</div>
									</div>
								</div>
							</li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 knwJIa">카테고리</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<select name="item_category">
										<option name="item_category" value="베이비의류(0-2세)">베이비의류(0-2세)</option>
										<option name="item_category" value="여아의류(3-6세)">여아의류(3-6세)
										</option>
										<option name="item_category" value="여주니어의류(7세~)">여주니어의류(7세~)
										</option>
										<option name="item_category" value="남아의류(3-6세)">남아의류(3-6세)
										</option>
										<option name="item_category" value="남주니어의류(7세~)">남주니어의류(7세~)
										</option>
										<option name="item_category" value="유아동신발/잡화">유아동신발/잡화</option>
										<option name="item_category" value="교육/완구/인형">교육/완구/인형</option>
										<option name="item_category" value="유아동용품">유아동용품</option>
										<option name="item_category" value="출산/임부용품">출산/임부용품</option>
										<option name="item_category" value="이유용품/유아식기">이유용품/유아식기</option>
									</select>
								</div></li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 gvWKtv">거래지역</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<input placeholder="거래 지역을 입력해주세요." type="text"
										name="user_addr_at"
										class="ProductNewstyle__LocationInput-sc-7fge4a-14 GEuoA">
								</div></li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 gGpLyz">흥정</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<div class="sc-ciodno gjftID">
										<label class="sc-gGCbJM iBQgZV"> <input
											name="item_bargain_YN" type="radio" value="0">흥정불가
										</label> <label class="sc-gGCbJM jZbUmZ"> <input
											name="item_bargain_YN" type="radio" value="1"
											checked="checked">흥정가능
										</label>
									</div>
								</div></li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 gvWKtv">가격</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<div
										class="ProductNewstyle__PriceInputWrapper-sc-7fge4a-15 fDlSqf">
										<input type="number" placeholder="숫자만 입력해주세요."
											class="ProductNewstyle__PriceInput-sc-7fge4a-16 eAhDI"
											name="item_price"> 원
									</div>
								</div></li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 iqSfRn">설명</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<textarea rows="6" name="item_info"
										class="ProductNewstyle__Description-sc-7fge4a-21 gQnFKF"
										placeholder="여러 장의 상품 사진과 구입 연도, 브랜드, 사용감, 하자 유무 등 구매자에게 필요한 정보를 꼭 포함해 주세요."></textarea>
								</div></li>
						</ul>
					</section>
				</main>
				<footer class="ProductNewstyle__FloatingFooter-sc-7fge4a-27 kppXDq">
					<div
						class="ProductNewstyle__RegisterButtonWrapper-sc-7fge4a-28 iMvseQ">
						<button type="submit"
							class="ProductNewstyle__RegisterButton-sc-7fge4a-29 bgpKeW">
						</button>
					</div>
				</footer>
			</form>
		</div>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>


</body>
</html>