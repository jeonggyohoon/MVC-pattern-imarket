
<%@page import="javax.websocket.Session"%>
<%@page import="com.smhrd.model.board.CommentInfoDAO"%>
<%@page import="com.smhrd.model.board.CommentInfoDTO"%>
<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="com.smhrd.model.board.BoardInfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.board.BoardInfoDAO"%>
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
	button,input[type="button"]
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
		 line-height: 1.4em;
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
	.details {
		width: 80%;
		margin-left: 120px;
	}
	
	.back, .commemt {
		margin-left: 120px;
		width: 80%;
		}
</style>		

	
	</head>
	<body class="right-sidebar is-preload">
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
					<li><a href="main.jsp">홈</a></li>
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
				<li><a href=
				<%if (user_id != null) {%>
					<%="../item/uploadItemBoard.jsp"%>
				<%}else {%>
					<%= "../user/login.jsp"%>					
				<% } %>
					>판매하기</a></li>
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

	
	<%
    int b_idx =  Integer.parseInt(request.getParameter("board_idx"));
	BoardInfoDTO dto = new BoardInfoDTO(b_idx);
	BoardInfoDAO dao = new BoardInfoDAO();
	List<BoardInfoDTO> dtail_list= dao.showBoardDtail(dto);
    
	session.setAttribute("b_idx", b_idx);
	int cnt =0;
	
	if(request.getParameter("cnt")!=null){
		cnt =Integer.parseInt(request.getParameter("cnt"));
	}else{
		cnt=0;
	}
    %>
	<table border="1" class="details">
		<tr>
			<td>제목</td>
			<td style="text-align: right; "><%=dtail_list.get(0).getUser_id() %>&emsp;|&emsp;<%=dtail_list.get(0).getUser_nick() %>&emsp;|&emsp;<%=dtail_list.get(0).getUploaded_at() %>&emsp;|&emsp;<%=dtail_list.get(0).getB_file() %></td>
		
		</tr>
		<tr>
			<td colspan="3"><%=dtail_list.get(0).getB_title() %></td>
		
		</tr>
		
		<tr>
		
		</tr>
		<tr>
			<td colspan="3">내용</td>
		
		</tr>
		<tr>
			<td colspan="3" ><%=dtail_list.get(0).getB_content() %></td>
		
		</tr>
		
		

	</table>
	
	<%
	CommentInfoDTO cdto = new CommentInfoDTO(0, b_idx);
	CommentInfoDAO cdao = new CommentInfoDAO();
	List<CommentInfoDTO> comment_list = cdao.showComment(cdto); 
	%>
	
	
	
	<div class="back">
	<%if(loginMember != null){ %>
	<%if (loginMember.getUser_id().equals(dtail_list.get(0).getUser_id())){ %>
	<a href="boardUpdate.jsp"><button>게시글 수정</button></a>
	<a href="boardDelete.jsp"><button>게시글 삭제</button></a>
<!-- 	<a href="BoardSuggest"><button id="like" >게시글 추천</button></a> -->
	<%} else { %>
	<%if(cnt>0){%>
		<input type="button" id="like" value="추천" disabled="disabled" onclick="button1_click();" >
	
	<%}else{%>
		<input type="button" id="like" value="추천" onclick="button1_click();" >
	
	<%} %>
	<%} %>
	<%} %>
	<a href="../boardController?pagebutton=1"><button onclick="button2_click();">뒤로가기</button></a><br><br><br>
	</div>
	
	

	<script type="text/javascript">
	function button2_click() {
		window.location.href="../boardController?pagebutton=1";
	}
	function button1_click() {
		window.location.href="../BoardSuggest";
	}
	
	
	</script>
	
	<div class="commemt">
	<h3>댓글</h3>
		<%for(int i=0;i < comment_list.size(); i++){ %>
	<table border="1">
		<tr>
			<td colspan="2" rowspan="1" style="border-bottom:1px solid #f7f7f7"><%=comment_list.get(i).getUser_nick() %></td>
		</tr>
		<tr>
			<td colspan="2" style="border-bottom:1px solid #f7f7f7"><%=comment_list.get(i).getCmt_content() %></td>
		</tr>
		<tr>
			<td colspan="2" style="border-bottom:1px solid #f7f7f7"><%=comment_list.get(i).getUploaded_at() %></td>
		</tr>
		<tr>
		<td>
	<%if(loginMember != null){ %>
	<%if(loginMember.getUser_id().equals(comment_list.get(i).getUser_id())){ %>
		<a href="commentUpdate.jsp?cmt_idx=<%=comment_list.get(i).getCmt_idx() %>">수정 |</a>
		<a href="../commentDeleteService?cmt_idx=<%=comment_list.get(i).getCmt_idx() %>" onclick="return confirm('삭제하시겠습니까?');">삭제</a>
	<%} %>
	<%} %>
	
	</td>
	</tr>
	<tr>
	<td><td>
	</tr>
	</table>
	<br>
		<%} %>
	<br><br><br>	
	<%if(loginMember != null){ %>
	<h5>댓글 작성하기</h5>
	<form action="../CommentService?board_idx=<%=b_idx %>" method="post">
	
	<table border="1">
		<tr>
			<td>작성자 닉네임</td>
		</tr>
		<tr>
			<td><%=loginMember.getUser_nick() %></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="댓글을 작성해 주세요!" value="" id="cmt_content" name="cmt_content"></td>
		</tr>
		
		
	</table>
			<button type="submit"  class="btn">등록</button>
	</form>
	</div>
	<%} %>

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
		      var content = document.getElementById("cmt_content").value;
		     // 동작(이벤트)을 실행하지 못하게 막는 메서드입니다.
		      if(content==""){
		        alert("댓글내용은 필수 사항입니다!");
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