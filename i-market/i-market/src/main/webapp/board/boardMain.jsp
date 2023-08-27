<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="com.smhrd.model.board.CommentInfoDTO"%>
<%@page import="com.smhrd.model.board.CommentInfoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.board.BoardInfoDAO"%>
<%@page import="com.smhrd.model.board.BoardInfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
<title>Dopetrope by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> -->
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->

<style type="text/css">
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
  font-family: 'Hi Melody', cursive;
  background: var(--background);
  color: var(--color);
}
.index_01{

	font-family: 'Hi Melody', cursive;
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

#pagebutton {
	margin-left: 20px;
}


#footer a {
			color: #fff;
		}
.boardMain, .click {
	width: 80%;
	margin-left: 120px;
}
.tap {
	margin-left: 450px;
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
				<a class="index_01" href="main.jsp">아이 i 마켓</a>
			</h1>
			</div>
			
			<div>
			<span>유아용품전용 중고거래 플랫폼</span>
			</div>

					<!-- Nav -->
						<nav id="nav">
				<ul>
					<li><a href="main.jsp">홈</a></li>
					<li><a href="item/itemListMain.jsp">전체보기</a>
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
					<%="item/uploadItemBoard.jsp"%>
				<%}else {%>
					<%= "user/login.jsp"%>					
				<% } %>
					>판매하기</a></li>
					<li class="current"><a href="./boardController?pagebutton=1">게시판</a></li>
					<li><a href="./ShowNewsService">NEWS</a></li>
					<li><a href=
				<%if (user_id != null) {%>
					<%="user/myPage.jsp"%>
				<%}else {%>
					<%= "user/login.jsp"%>					
				<% } %>
					>마이페이지</a></li>
				</ul>
			</nav>


				</section>
				
				<!-- Main -->
				<section id="main">
					<div class="container">
						<div >
							<div class="col-8 col-12-medium">
				
				
							<% ArrayList<BoardInfoDTO> board_list = (ArrayList<BoardInfoDTO>)request.getAttribute("board_list"); %>
							<%-- <%int boardPage = Integer.parseInt(request.getParameter("boardPage"));  %> --%>
							<%int boardPage = (int)request.getAttribute("boardPage"); %>
							
						
						<!-- 검색기능 -->
						<div class="click">
								<div>
									<!-- <form method="post" name="search" action="BoardSearchService"> -->
										
											
												<p>&emsp;<%="검색조건" %>&nbsp;&nbsp;&#160;<select class="form-control" name="searchField">
														<option value="0" >선 택▼</option>
														<option value="board_title">제목</option>
														<option value="user_id">작성자</option>
												</select>
												&emsp;&emsp;키워드 &nbsp;&nbsp;&#160;<input type="text" class="form-control" id="search"
													placeholder="검색어 입력" name="searchText" maxlength="100">
												&emsp;&emsp;<button type="button" class="btn" id="buttonSearch">검색</button>
												&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
												&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
												<%if(user_id != null){ %>
												<a href="board/boardInput.jsp"><button>글작성</button></a></p><br>
												<%} %>
						
										
									<!-- </form> -->
								</div>
							</div>
							<!-- jquery 검색 조건 -->
								
						
						<!-- 메인기능 -->
							<table border="1" class="boardMain">
								<tr>
									<td style="color:blue">글번호</td>
									<td>제목(댓글수)</td>
									<td>작성자</td>
									<td>작성일</td>
									<td>추천</td>
									<td>조회수</td>
								</tr>
								<%if (board_list.size() >= (boardPage*10)){ %>
									<%for(int i=(boardPage*10)-10;i< boardPage*10  ;i++){ %>
									<tr>
										<td><%=i+1 %></td>
										<%CommentInfoDTO dto = new CommentInfoDTO(0, board_list.get(i).getB_idx());
							  				CommentInfoDAO dao = (CommentInfoDAO)new CommentInfoDAO();
							  				List<CommentInfoDTO> comment_count = dao.showComment(dto);%>
										<td><a
											href="BoardShowService?board_idx=<%=board_list.get(i).getB_idx()%>"><%=board_list.get(i).getB_title() %></a>(<%=comment_count.size()%>)</td>
										<td><%=board_list.get(i).getUser_nick() %></td>
										<td><%=board_list.get(i).getUploaded_at() %></td>
										<td><%=board_list.get(i).getB_likes() %></td>
										<td><%=board_list.get(i).getB_views() %></td>
									</tr>
										
									<%} %>
								<%} else{ %>
									<%for(int i=((boardPage*10) - 10);i< ((boardPage*10) - 10 )+ (board_list.size() % 10)  ;i++){ %>
									<tr>
										<td><%=i+1 %></td>
										<%CommentInfoDTO dto = new CommentInfoDTO(0, board_list.get(i).getB_idx());
							  				CommentInfoDAO dao = (CommentInfoDAO)new CommentInfoDAO();
							  				List<CommentInfoDTO> comment_count = dao.showComment(dto);%>
										<td><a href="BoardShowService?board_idx=<%=board_list.get(i).getB_idx()%>"><%=board_list.get(i).getB_title() %></a>(<%=comment_count.size() %>)</td>
										<td><%=board_list.get(i).getUser_nick() %></td>
										<td><%=board_list.get(i).getUploaded_at() %></td>
										<td><%=board_list.get(i).getB_likes() %></td>
										<td><%=board_list.get(i).getB_views() %></td>
									</tr>
										
									<%} %>	
								<%} %>
							</table>
								
								<!-- <nav aria-label="...">
								  <ul class="pagination">
								    <li class="page-item disabled">
								      <a class="page-link">Previous</a>
								    </li>
								    <li class="page-item"><a class="page-link" href="#">1</a></li>
								    <li class="page-item active" aria-current="page">
								      <a class="page-link" href="#">2</a>
								    </li>
								    <li class="page-item"><a class="page-link" href="#">3</a></li>
								    <li class="page-item">
								      <a class="page-link" href="#">Next</a>
								    </li>
								  </ul>
								</nav> -->
								
								
								<% int totalPage = ((board_list.size()-1) / 10) + 1; %>
								<a class="tap"></a>
								<%if (totalPage<= 5){ %>
									<%for(int i=1;i<=totalPage;i++){ %>
									<a href="boardController?pagebutton=<%=i %>"><button type="button" id="pagebutton"><%=i %></button></a>
									<%} %>
								<%} else {%>
									<%if(boardPage > 5){ %>
									<a href="boardController?pagebutton=<%=boardPage - ((boardPage-1) % 5) -5 %>"><button type="button" id="pagebutton">back</button></a>
									<%} %>
									<%if(totalPage >= (((boardPage -1) / 5) + 1) * 5){ %>
										
										<%for(int i=boardPage - (boardPage-1 % 5)  ;i<=boardPage - (boardPage-1 % 5) + 4;i++){ %>
										<a href="boardController?pagebutton=<%=i %>"><button type="button" id="pagebutton"><%=i %></button></a>
										<%} %>
									<%} else{%>	
										<%for(int i=boardPage - (boardPage % 5) + 1;i<=totalPage;i++){ %>
										<a href="boardController?pagebutton=<%=i %>"><button type="button" id="pagebutton"><%=i %></button></a>
										<%} %>
										
									<%} %>
									<%if(boardPage < totalPage - ((totalPage -1) % 5) ){ %>
									<a href="boardController?pagebutton=<%=boardPage - (boardPage-1 % 5) +5 %>"><button type="button" id="pagebutton">next</button></a>
									<%} %>
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
	
<script type="text/javascript" src="assets/js/jquery-3.7.0.js"></script>


<script type="text/javascript">
$(".btn").on("click",function(){
var search = $("#search").val();
var field = $("select[name=searchField]").val();
console.log(search);
 if(search==="" || field==="0"){
	window.location.href='boardController?pagebutton=1';
}else{ 
/* window.location.href=http://localhost:8081/i-market/boardController?pagebutton=1; */
window.location.href='http://localhost:8081/i-market/BoardSearchService?searchText='+search+'&searchField='+field;
}
});
</script>
<script>
var search = document.getElementById("search");
    search.addEventListener("keyup", function (event) {
      if (event.keyCode === 13) {
        event.preventDefault(); 
       document.getElementById("buttonSearch").click();
      }
    });
</script>
							

	
	<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>