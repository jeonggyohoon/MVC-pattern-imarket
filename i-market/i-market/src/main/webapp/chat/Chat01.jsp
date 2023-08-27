<%@page import="com.smhrd.model.chat.t_chatroominfoDAO"%>
<%@page import="com.smhrd.model.chat.t_chatroominfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
<title>c님의 채팅방</title>
<script type="text/javascript">
  function closePop(){
    var popup = window.close();
  }
</script>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@font-face {
    font-family: 'Hi Melody', cursive;
    src: url('https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap');
    font-weight: normal;
    font-style: normal;



}
body {
    height: 100vh;
    width: 100%;
    margin: 0;
    padding: 0;
    font-family: sans-serif;
   background: #FDF5E6;
    background-repeat: no-repeat;
    background-size: 100%;
}
body {
	display: flex;
	align-items: center;
	justify-content: center;
    flex-direction: column;
}
table{
	width: 100%;
	border-radius: 10px 10px 0 0;
	vertical-align: middle;
	text-decoration: none;
	color: black;
    font-family: 'Hi Melody', cursive;
}
.td_1{
	border-radius: 10px 0 0 0;
}
.td_2{
	border-radius: 0 10px 0 0;
}
.td_3{
	border-radius: 0 0 0 10px;
}
.td_4{
	border-radius: 0 0 10px 0;
}
::-webkit-scrollbar {
	width: 4px;
}
::-webkit-scrollbar-thumb {
	background-color: #4c4c6a;
	border-radius: 2px;
}
.top-bar{
	height: 50px;
	background: #F9FBFF;
 	border-radius: 10px 10px 0 0;
}
#writer {
margin-top: 20px;
height: 40px;
width: 120px;
    font-family: 'Hi Melody', cursive;

background: #f97777;
border-radius: 10px 10px 10px 10px;
}
.fa-arrow-left {
	font-size: 150%;
	top: 25px;
}
.chatbox {
    width: 400px;
    height: 750px;
    max-height: 750px;
    display: flex;
    flex-direction: column;
    overflow: hidden;
    box-shadow: 0 0 4px rgba(0,0,0,.14),0 4px 8px rgba(0,0,0,.28);
}
.chat-window {
    flex: auto;
    width: 500px;
    max-height: calc( 85% - 60px);
    background: #F9FBFF;
    opacity: 0.85;
    overflow: auto;
    text-align: center;
    border-radius: 10px;
}

.chat-input {
    flex: 0 0 auto;
    height: 60px;
    background: #F9FBFF;
    border-top: 1px solid #2671ff;
    box-shadow: 0 0 4px rgba(0,0,0,.14),0 4px 8px rgba(0,0,0,.28);
}
.chat-input input {
    height: 59px;
    line-height: 60px;
    outline: 0 none;
    border: none;
    width: calc(100% - 60px);
    color: white;
    text-indent: 10px;
    font-size: 12pt;
    padding: 0;
    background: #F9FBFF;
}
.chat-input button {
    float: right;
    outline: 0 none;
    border: none;
    background: rgba(255,255,255,.25);
    height: 40px;
    width: 40px;
    padding: 2px 0 0 0;
    margin: 10px;
    transition: all 0.15s ease-in-out;
}
.chat-input input[good] + button {
    box-shadow: 0 0 2px rgba(0,0,0,.12),0 2px 4px rgba(0,0,0,.24);
    background: #2671ff;
}
.chat-input input[good] + button:hover {
    box-shadow: 0 8px 17px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
}
.chat-input input[good] + button path {
    fill: white;
}
.msg-container {
    position: relative;
    display: inline-block;
    width: 100%;
    margin: 0 0 10px 0;
    padding: 0;
}
.msg-box {
    display: flex;
    background: #b2b2b2;
    padding: 10px 10px 0 10px;
    border-radius: 0 6px 6px 0;
    max-width: 80%;
    width: auto;
    float: left;
    box-shadow: 0 0 2px rgba(0,0,0,.12),0 2px 4px rgba(0,0,0,.24);
}
.user-img {
    display: inline-block;
    border-radius: 50%;
    height: 40px;
    width: 40px;
    background: #2671ff;
    margin: 0 10px 10px 0;
}
.flr {
    flex: 1 0 auto;
    display: flex;
    flex-direction: column;
    width: calc(100% - 50px);
}
.messages {
    flex: 1 0 auto;
}
.msg {
    display: inline-block;
    font-size: 11pt;
    line-height: 13pt;
    color: rgba(255,255,255,.7);
    margin: 0 0 4px 0;
}
.msg:first-of-type {
    margin-top: 8px;
}
.timestamp {
    color: rgba(0,0,0,.38);
    font-size: 8pt;
    margin-bottom: 10px;
}
.username {
    margin-right: 3px;
}
.posttime {
    margin-left: 3px;
}
.msg-self .msg-box {
    border-radius: 6px 0 0 6px;
    background: #79C7C5;
    float: right;
}
.msg-self .user-img {
    margin: 0 0 10px 10px;
}
.msg-self .msg {
    text-align: right;
}
.msg-self .timestamp {
    text-align: right;
}
.time {
	width: 50px;
}
.who {
	width: 80px;
}
table tbody tr:hover {
	opacity: 0.7;
}
table tbody tr:nth-child(odd) {
   background: linear-gradient(to bottom left, rgb(235, 225, 15) 40%, #F9FBFF 100%);
}
table tbody tr:nth-child(even) {
   background: linear-gradient(to bottom left, #217214a3 40%, #F9FBFF 100%);
}
hr{
	margin: 0;
}
a {
	text-decoration: none;
	color: black;
}
.info{
	height: 40px;
	display: table-cell;
	vertical-align: middle;
	text-align: center;
}
td {
	align-items: center;
}
</style>
</head>
<body>
	<!-- Q17. 게시글 목록 조회 기능 -->
	<!-- webboard 테이블에 있는 모든 게시글 출력
		 select * from webboard order by b_date desc -->
		 <%
		 String user_id = (String)session.getAttribute("user_id");
		 t_chatroominfoDTO dto = new t_chatroominfoDTO(user_id);
		 t_chatroominfoDAO dao = new t_chatroominfoDAO();
		 List<t_chatroominfoDTO> chat_list = dao.showChatRoom(dto);
		 // session.getAttribute(name)%>
	<!-- Q18. 게시글 목록 세부페이지 기능(제목을 클릭하면 세부페이지 BoardDetail.jsp로 이동)-->
	<section class="chat-window">
	<div id="board">
		<table id="list" border="1">
			<tbody>
			<tr>
				<td class="td_1 who">대화상대</td>
				<td><div>물품이름</div><hr>
				<div class="info">판매물품정보</div></td>
				<td class="td_2">날짜</td>
			</tr>
			<%for(int i = 0; i < chat_list.size(); i++) {
			if (i < (chat_list.size())-1){%>
			<tr>	
				<td class="who"><a href="Chat02.jsp?croom_idx=<%=chat_list.get(i).getCroom_idx() %>"><%=chat_list.get(i).getTo_id()%></a></td>
				<td><a href="Chat02.jsp?croom_idx=<%=chat_list.get(i).getCroom_idx() %>"><div><%=chat_list.get(i).getCroom_title() %></div></a><hr>
				<a href="Chat02.jsp?croom_idx=<%=chat_list.get(i).getCroom_idx() %>"><div class="info"><%=chat_list.get(i).getCroom_content() %></div></a></td>
				<td class="date"><%=chat_list.get(i).getCroom_at() %></td>
			</tr>
			<%}else {%>
			<tr>	
				<td class="td_3 who"><a href="Chat02.jsp?croom_idx=<%=chat_list.get(i).getCroom_idx() %>"><%=chat_list.get(i).getTo_id()%></a></td>
				<td><a href="Chat02.jsp?croom_idx=<%=chat_list.get(i).getCroom_idx() %>"><div><%=chat_list.get(i).getCroom_title() %></div></a><hr>
				<a href="Chat02.jsp?croom_idx=<%=chat_list.get(i).getCroom_idx() %>"><div class="info"><%=chat_list.get(i).getCroom_content() %></div></a></td>
				<td class="td_4 date"><%=chat_list.get(i).getCroom_at() %></td>
			</tr>
				
			<%
				}
			} %>
		</tbody>
		</table>
		<%session.setAttribute("user_id", user_id);
		String croom_content= "croom_test";
		String croom_title= "croom_title";
		session.setAttribute("croom_content", croom_content);
		session.setAttribute("croom_title", croom_title);

		%>
	</section>
	<button class="chat-input" id="writer" onclick="closePop()">채팅종료</button>
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
