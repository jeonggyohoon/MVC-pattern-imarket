<%@page import="com.main.model.WebMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
		<title>Dopetrope by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
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
		font-family:'Hi Melody', cursive;
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
		font-family:'Hi Melody', cursive;
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
	
	form input[type=email],
	form input[type=password],
	form select {
		-webkit-appearance: none;
		display: block;
		border: 0;
		padding: 0.75em 1em;
		font-size: 1em;
		border-radius: 5px;
		border: solid 1px #dddddd;
		background: #fff;
		width: 90%;
	}
	form input[type=text],
	form textarea {
	-webkit-appearance: none;
		display: block;
		border: 0;
		padding: 0.75em 1em;
		font-size: 1em;
		border-radius: 5px;
		border: solid 1px #dddddd;
		background: #fff;
		width: 90%;
	}
	
	.title, .content, .file, .back {
		padding-left: 130px;
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

</style>
	</head>
	<body class="right-sidebar is-preload" style="font-family:'Hi Melody', cursive;">
		<%   String user_id = (String)session.getAttribute("user_id");
		WebMemberDTO loginMember = (WebMemberDTO) session.getAttribute("loginMember");
   if (loginMember != null) {
      System.out.print(loginMember.getUser_id());
   }%>
		<div class="row">
		<div class="col-12" align="right">
		<%if(loginMember==null) { %>
		<a href="user/join.jsp">
				<input type="button" class="btn float-right" value="Join">
		</a>
		<a href="user/login.jsp">
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
		<div id="page-wrapper">

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
					<li class="current"><a href="boardController?pagebutton=1">게시판</a></li>
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
			

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div>
							<div class="col-8 col-12-medium">

							<form action="../BoardWriteService" method="post" enctype="multipart/form-data">
								<div class="title">
								<h1>제목 <input type="text" name="b_title" id="b_title" maxlength="30"></h1><br>
								</div>
								<div class="content">
								<h1>&nbsp;내용</h1> 
								<textarea rows="20" cols="120" id="b_content" name="b_content" maxlength="3000" placeholder="1000자까지 입력가능"></textarea><br>
								</div>
								<!-- <h1>내용 <input type="text" name="b_content"></h1> -->
								<div class="file">
								<br><h1>첨부자료 <input type="file" name="b_file"></h1><br>
								<input type="reset" value="초기화">&nbsp;&nbsp;
								<input type="submit" value="작성하기" class="btn" id="buttonSearch">
								</div>
								
								</form>
								<br>
								<div class="back">
								<a href="../boardController?pagebutton=1"><button>뒤로가기</button></a>
								</div>

							</div>
						</div>
					</div>
				</section>

								<!-- Copyright -->
									<div id="copyright">
										<ul class="links">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										</ul>
									</div>

							</div>

		<!-- Scripts -->
		<script type="text/javascript" src="assets/js/jquery-3.7.0.js"></script>

		<script type="text/javascript">
		   
		   const $form = document.querySelector('form');
		
		   $form.addEventListener("submit", (event) => {
		      var b_title = document.getElementById("b_title").value;
		      var b_content = document.getElementById("b_content").value;
		     // 동작(이벤트)을 실행하지 못하게 막는 메서드입니다.
		      if(b_title=="" || b_content==""){
		        alert("제목과 내용은 필수 입력사항입니다.");
		        /*  $('#cmt_content').focus();  */
		        event.preventDefault();
		      }else{
		         $(form).unbind("submit");
		      }
		   });
		 </script>
		   
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>