<%@page import="java.text.DecimalFormat"%>
<%@page import="com.main.model.itemBargainDAO"%>
<%@page import="com.main.model.itemBargainDTO"%>
<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.main.model.t_iteminfoDAO"%>
<%@page import="com.main.model.t_iteminfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/7b42c1f2dd.js" ></script>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />




<style type="text/css">

a {
	text-decoration: none;
}

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
.row {
	padding: 0  !important;
	
}
.row > .col-12 {
	width: 80%  !important;
}
.bargain :hover {
	background-color: yellow !important;
}


</style>
<link rel="stylesheet" href="../assets/css/itemDetail_young.css" />
</head>
<body class="homepage is-preload hoian-kr" style="font-family: 'Hi Melody', cursive;">
<%
   // session값 가져오기
   String user_id = (String)session.getAttribute("user_id");
   WebMemberDTO loginMember = (WebMemberDTO) session.getAttribute("loginMember");
   if (loginMember != null) {
      System.out.print(loginMember.getUser_id());
   }
   %>
   
   <div class="row">
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
					<li class="current"><a href="item/itemListMain.jsp">전체보기</a>
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
			<hr>
	<noscript>
		<img height="1" width="1" style="display: none" alt="facebook"
			src="https://www.facebook.com/tr?id=992961397411651&ev=PageView&noscript=1" />
	</noscript>

	<script>
		!function(t, e, n, s, a, c, i, o, p) {
			t.AppsFlyerSdkObject = a, t.AF = t.AF
					|| function() {
						(t.AF.q = t.AF.q || []).push([ Date.now() ]
								.concat(Array.prototype.slice.call(arguments)))
					}, t.AF.id = t.AF.id || i, t.AF.plugins = {}, o = e
					.createElement(n), p = e.getElementsByTagName(n)[0],
					o.async = 1, o.src = "https://websdk.appsflyer.com?"
							+ (c.length > 0 ? "st="
									+ c.split(",").sort().join(",") + "&" : "")
							+ (i.length > 0 ? "af_id=" + i : ""), p.parentNode
							.insertBefore(o, p)
		}(window, document, "script", 0, "AF", "banners", {
			banners : {
				key : "629f6f7a-a2a6-49c0-8d27-ffa48df1cd0e"
			}
		})
		AF('banners', 'showBanner')
  function openPop(){
    var popup = window.open('CreateChatService.do', '채팅', 'width=700px,height=800px,scrollbars=no,menubar=0,location=no');
  }
  function openPop2(){
    var popup = window.open('CreateChatService2.do', '채팅', 'width=700px,height=800px,scrollbars=no,menubar=0,location=no');
  }
function gologin() {
	window.location.href="../user/login.jsp";
		}
	</script>

	<%
	int item_idx = Integer.parseInt(request.getParameter("item_idx"));
	t_iteminfoDTO dto = new t_iteminfoDTO(item_idx);
	t_iteminfoDAO dao = new t_iteminfoDAO();
	List<t_iteminfoDTO> item_list = new t_iteminfoDAO().showItemDetail(dto);
	%>
	<article id="content" data-id="556391615">
		<h1 class="hide"><%=item_list.get(0).getItem_name()%></h1>
		<section id="article-images">
			<h3 class="hide">이미지</h3>
			<div id="image-slider">
				<div class="slider-wrap">
					<div class="slider slick-initialized slick-slider"
						data-article-id="556391615">
						<div class="slick-list draggable">
							<div class="slick-track"
								style="opacity: 1; width: 729px; transform: translate3d(0px, 0px, 0px);">
								<div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false"
									style="width: 729px;">
									<div>
										<a href="itemPhotoDetail.jsp?item_idx=<%=item_idx%>"
											style="width: 100%; display: inline-block;" tabindex="0">
											<div>
												<div class="image-wrap" data-image-id="-2063102816"
													data-image-index="1">
													<img class="portrait"
														alt=<%=item_list.get(0).getItem_name()%>
														src=".././photo/<%=item_list.get(0).getItem_photo()%>"
														style="opacity: 1;">
												</div>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="article-profile">
			<div id="article-profile-link">
				<h3 class="hide">프로필</h3>
				<div class="space-between">
					<div style="display: flex;">
						<div id="article-profile-left">
							<div id="nickname"><%=item_list.get(0).getUser_id()%></div>
							<div id="region-name"><%=item_list.get(0).getUser_addr_at()%></div>
						</div>
					</div>
					<div id="article-profile-right">
						<dl id="temperature-wrap">
							<dt>흥정여부</dt>
							<dd class="text-color-04 ">
								<%
								if (item_list.get(0).getItem_bargain_YN().equals("1")) {
								%>가능
								<%
								} else {
								%>불가능
								<%
								}
								%>
							</dd>
						</dl>
					</div>
				</div>
			</a>
		</section>
		<%
		if (item_list.get(0).getItem_bargain_YN().equals("1")) {
		%>

		<div class="container">
			<section class="article-description left">
				<h1 property="schema:name" id="article-title"
					style="margin-top: 0px;"><%=item_list.get(0).getItem_name()%></h1>
				<p id="article-category">
					<%=item_list.get(0).getItem_category()%>
					∙
					<time>
						<%=item_list.get(0).getUploaded_at()%>
					</time>
				</p>
				<p property="schema:priceValidUntil" datatype="xsd:date"
					content="2025-06-02"></p>
				<p rel="schema:url" resource="https://www.daangn.com/556391615"></p>
				<p property="schema:priceCurrency" content="KRW"></p>
				<p id="article-price" property="schema:price" content="5000.0"
					style="font-size: 18px; font-weight: bold;">
					<%
										int upPrice = item_list.get(0).getItem_price();
										DecimalFormat decimalFormat = new DecimalFormat("#,###");
										String formattedPrice = decimalFormat.format(upPrice);
										%>
										<%=formattedPrice %>원
				</p>
				<div property="schema:description" id="article-detail">
					<p><%=item_list.get(0).getItem_info()%></p>
				</div>
				<p id="article-counts">조회 <%=item_list.get(0).getItem_view() %></p>
				<%
				session.setAttribute("item_name", item_list.get(0).getItem_name());
				session.setAttribute("item_info", item_list.get(0).getItem_info());
				session.setAttribute("item_idx", item_list.get(0).getItem_idx());
				session.setAttribute("bar_id", user_id);
				session.setAttribute("to_id", item_list.get(0).getUser_id());
				%>
				<tr>
					<td><input type="button" onclick=<%if (user_id == null) {%>
						"gologin()"
						 <%} else {%>
						 "openPop()"
						 <%}%>
						value="채팅"></td>
				</tr>
			</section>
			<% if (loginMember==null) {
			}else{
			%>
			<aside class="article-description right">
				<%
					if ((!loginMember.getUser_id().equals(item_list.get(0).getUser_id())) && !loginMember.getUser_id().equals(null) ){
				%>
				<form action="../uploadBargainService" method="post">
					<input type="number" placeholder="숫자만 입력해주세요."
						class="ProductNewstyle__PriceInput-sc-7fge4a-16 eAhDI"
						name="bar_price"> 원 <br><br><input style="background: rgb(235, 225, 15);" type="submit" value="흥정하기">
				</form>
					<%} 
					if (loginMember.getUser_id().equals(item_list.get(0).getUser_id())){%>
				<div>
					<%
				itemBargainDTO dto2 = new itemBargainDTO();
				itemBargainDAO dao2 = new itemBargainDAO();
				List<itemBargainDTO> bar_list = new itemBargainDAO().showBargain(item_idx);
				%>
					<h4>제시된 가격</h4>
					<%for(int i = 0; i<(bar_list.size()); i++){
						session.setAttribute("to_id_2", bar_list.get(i).getUser_id());
					%>
					<br><a class="bargain" onclick="openPop2()" style="cursor:pointer">제시된 가격 :
					<%
										int upPrice1 = bar_list.get(i).getBar_price();
										
										String formattedPrice1 = decimalFormat.format(upPrice1);
										%>
										<%=formattedPrice1 %>원 - <%=bar_list.get(i).getUser_id() %></a>
				<%} %>
				</div>
				<% }%>
			</aside>
		</div>
		<%
			}
			} else {
		%>

		<section id="article-description">
			<h1 property="schema:name" id="article-title"
				style="margin-top: 0px;"><%=item_list.get(0).getItem_name()%></h1>
			<p id="article-category">
				<%=item_list.get(0).getItem_category()%>
				∙
				<time>
					<%=item_list.get(0).getUploaded_at()%>
				</time>
			</p>
			<p property="schema:priceValidUntil" datatype="xsd:date"
				content="2025-06-02"></p>
			<p rel="schema:url" resource="https://www.daangn.com/556391615"></p>
			<p property="schema:priceCurrency" content="KRW"></p>
			<p id="article-price" property="schema:price" content="5000.0"
				style="font-size: 18px; font-weight: bold;"><%
										int upPrice = item_list.get(0).getItem_price();
										DecimalFormat decimalFormat = new DecimalFormat("#,###");
										String formattedPrice = decimalFormat.format(upPrice);
										%>
										<%=formattedPrice %>원
			</p>
			<div property="schema:description" id="article-detail">
				<p><%=item_list.get(0).getItem_info()%></p>
			</div>
			<p id="article-counts">조회 <%=item_list.get(0).getItem_view() %></p>
			<%
			session.setAttribute("item_name", item_list.get(0).getItem_name());
			session.setAttribute("item_info", item_list.get(0).getItem_info());
			session.setAttribute("to_id", item_list.get(0).getUser_id());
			%>
			<tr>
				<td><input type="button" onclick=<%if (user_id == null) {%>
					"gologin()"
						 <%} else {%>
						 "openPop()"
						 <%}%>
					value="채팅"></td>
			</tr>
		</section>
		<%
		}
		%>
	</article>

	<!— Scripts —>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>

</html>