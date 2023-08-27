<%@page import="java.text.DecimalFormat"%>
<%@page import="java.security.Timestamp"%>
<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.main.model.t_iteminfoDAO"%>
<%@page import="com.main.model.t_iteminfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>전체상품</title>
<script src="https://kit.fontawesome.com/7b42c1f2dd.js" ></script>
<style type="text/css">
</style>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
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
	
	-webkit-appearance: none !important;
		display: inline-block !important;
		text-decoration: none !important;
		cursor: pointer !important;
		border: 0 !important;
		border-radius: 5px !important;
		background:	rgb(235, 225, 15) !important;
		color: 	#FFf !important;
		font-weight: 700 !important;
		outline: 0 !important;
		font-size: 1.1em !important;
		padding: 0.4em 1em 0.4em 1em !important;
		text-align: center !important;
		-moz-transition: background-color .25s ease-in-out !important;
		-webkit-transition: background-color .25s ease-in-out !important;
		-ms-transition: background-color .25s ease-in-out !important;
		transition: background-color .25s ease-in-out !important;
	
	}
	
	
	
	button:hover,
		.button:hover
		{
		
		background: rgb(235, 225, 15) !important;
		}

		input[type="button"]:hover,
		input[type="submit"]:hover,
		input[type="reset"]:hover
		 {
			background: #217214a3 !important;
		}

		input[type="button"]:active,
		input[type="submit"]:active,
		input[type="reset"]:active,
		button:active,
		.button:active {
			background: rgb(235, 225, 15) !important;
		}
		
		
		input[type="button"].alt:hover,
			input[type="submit"].alt:hover,
			input[type="reset"].alt:hover{
			
			background: #217214a3 !important;
			
			}
		
		

		input[type="button"].alt,
		input[type="submit"].alt,
		input[type="reset"].alt,
		button.alt,
		.button.alt {
			background:#f97777 !important;
		}

			button.alt:hover,
			.button.alt:hover {
				background: rgb(235, 225, 15) !important;
			}


		input[type="button"].icon:before,
		input[type="submit"].icon:before,
		input[type="reset"].icon:before,
		button.icon:before,
		.button.icon:before {
			opacity: 0.35 !important;
			position: relative !important;
			top: 0.05em !important;
			margin-right: 0.75em !important;
		}

		input[type="button"].large,
		input[type="submit"].large,
		input[type="reset"].large,
		button.large,
		.button.large {
			font-size: 1.5em !important;
			padding: 0.5em 1em 0.5em 1em !important;
		}
.row {
	padding: 0  !important;
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
    background: #217214a3 !important;
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
.btn{
	bacolor: rgb(235, 225, 15) !important;
}
#header {
	margin: 0px;
}
.row.login{
	color: #000000 !important;
	margin: -20px 0 0 -30px !important;
	width: 80% !important;
}
.row > .col-12 {
	
}
.head_01 {
	background-color: #ffffff !important;
	padding: 0 !important;
	margin: 0 !important;
	
}

</style>
<link rel="stylesheet" href="../assets/css/itemList_young.css" />
</head>
<body class="homepage is-preload" style="font-family: 'Hi Melody', cursive;">
<% 
	String user_id = (String)session.getAttribute("user_id");
	WebMemberDTO loginMember = (WebMemberDTO) session.getAttribute("loginMember");
   %>
		<section class="head_01">
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
			<a href="../Logout"><input type="button" class="btn float-right" value="Logout"></a>
			<%} %>
			
			</div>
		</div>
		</section>
		

		<!-- Header -->
		<section id="header">
		
		
		<!-- Logo -->
			<div>
			<h1 >
				<a class="index_01" href="../main.jsp">아이 i 마켓</a>
			</h1>
			</div>
			
			<div>
			<span>유아용품전용 중고거래 플랫폼</span>
			</div>

			
		<!-- Nav -->
		<nav id="nav">
				<ul>
					<li><a href="../main.jsp">홈</a></li>
					<li class="current"><a href="itemListMain.jsp">전체보기</a>
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
				<li><a href=
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
		
	<div id="page-wrapper">

		<form action="itemListSearch.jsp" method="get">
			<div class="sc-iqzUVk VEwtK" style="margin-top: 20px;">
				<div class="sc-ipZHIp jNxiOc">
					<a class="sc-dliRfk imEKSd" href="itemListMain.jsp">
						<div class="sc-kLIISr kcDYue">전체보기</div>
					</a>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="베이비의류(0-2세)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">베이비의류(0-2세)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="여아의류(3-6세)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">여아의류(3-6세)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="여주니어의류(7세~)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">여주니어의류(7세~)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="남아의류(3-6세)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">남아의류(3-6세)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="남주니어의류(7세~)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">남주니어의류(7세~)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="유아동신발/잡화"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">유아동신발/잡화</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="교육/완구/인형"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">교육/완구/인형</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="유아동용품"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">유아동용품</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="출산/임부용품"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">출산/임부용품</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="이유용품/유아식기"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">이유용품/유아식기</div>
					</button>
				</div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</form>
		<%
		List<t_iteminfoDTO> item_list = new t_iteminfoDAO().showItem();
		%>
		<section>
			<div class="box container">
				<div class="row">
					<%
					for (int i = (item_list.size() - 1); i >= 0; i--) {
					%>
					<div class="col-4 col-6-medium col-12-small">
						<a
							href="../itemViewUpService?item_idx=<%=item_list.get(i).getItem_idx()%>">
							<div class="box list">
								<div class="image featured">
									<img src="../photo/<%=item_list.get(i).getItem_photo()%>" />
								</div>
								<div class="box itemName">
									<h4><%=item_list.get(i).getItem_name()%></h4>
								</div>
								<div class="box itemPriceTime">
									<div class="box itemPrice">
										<%
										int upPrice = item_list.get(i).getItem_price();
										DecimalFormat decimalFormat = new DecimalFormat("#,###");
										String formattedPrice = decimalFormat.format(upPrice);
										%>
										<%=formattedPrice %>
										원
									</div>
									<div class="box itemTime">
										<%=item_list.get(i).getUploaded_at()%>
									</div>
								</div>
								<div class="box itemAddr">
									<img
										src="https://m.bunjang.co.kr/pc-static/resource/5dcce33ad99f3020a4ab.png"
										width="15" height="17">
									<%=item_list.get(i).getUser_addr_at()%>
								</div>
							</div>
						</a>
					</div>
					<%
					}
					%>
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
									<li><a class="fa fa-google" href="#"><span
											class="label"></span></a></li>
								</ul>
								<ul class="contact">
									<li>
										<h3>Address</h3>
										<p>
											광주 서구 경열로 20 3,4층
										</p>
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
			</div>
		</section>
	</div>

	<div class="sc-cZBZkQ dRROgx">
		<div class="sc-fEUNkw iBxkck"></div>
	</div>

</body>
</html>