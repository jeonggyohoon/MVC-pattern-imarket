<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.chat.t_chattinginfoDAO"%>
<%@page import="com.smhrd.model.chat.t_chattinginfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title><%= session.getAttribute("user_id")%>님의 채팅방</title>
<script src="https://kit.fontawesome.com/7b42c1f2dd.js" crossorigin="anonymous"></script>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body {
    height: 100%;
    width: 100%;
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: #FDF5E6
}
body {
	display: flex;
	align-items: center;
	justify-content: center;
    flex-direction: column;
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
height: 50px;
width: 50px;
background: #f97777;
border-radius: 10px;

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
    max-height: calc(100% - 60px);
    background: #F9FBFF;
    opacity: 0.85;
    overflow: auto;
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
    color: black;
    text-indent: 10px;lf
    
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
    border-radius: 50%;
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
    background: #217214a3;
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
    color: rgba(0, 0, 0,.7);
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
    background: rgb(235, 225, 15);
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
</style>
</head>
<body>
	<%
	int croom_idx = Integer.parseInt(request.getParameter("croom_idx"));
	t_chattinginfoDTO dto = new t_chattinginfoDTO(croom_idx);
	t_chattinginfoDAO dao = new t_chattinginfoDAO();
	List<t_chattinginfoDTO> detail_list = dao.showChatRoom(dto);
	String user_id = (String) session.getAttribute("user_id");
	session.setAttribute("croom_idx", croom_idx);
	%>

	<section class="chatbox">
	<div class="top-bar">
	<a href="Chat01.jsp">
	<button id="writer">
      <div class="icons" align="center">
        <i class="fa-solid fa-arrow-left"></i>
      </div>
	</button>
	</a>
      <div class="menu">
        <div class="dots"></div>
      </div>
    </div>
		<section class="chat-window"><br>
			<%
				for (int i = 0; i < detail_list.size(); i++) {
					if (user_id.equals(detail_list.get(i).getTalker())) {
			%>
			<article class="msg-container msg-self" id="msg-0">
				<div class="msg-box">
					<div class="flr">
						<div class="messages">
							<p class="msg" id="msg-1">
								<%=detail_list.get(i).getTalking()%>
							</p>
						</div>
						<span class="timestamp"><span class="username"><%=detail_list.get(i).getTalker()%></span>•<span class="posttime"><%=detail_list.get(i).getTalking_at()%></span></span>
					</div>
					<img class="user-img" id="user-0" src="//gravatar.com/avatar/56234674574535734573000000000001?d=retro">
				</div>
			</article>
		
			<%
				}else{
			%>
			<article class="msg-container msg-remote" id="msg-0">
				<div class="msg-box">
					<img class="user-img" id="user-0" src="//gravatar.com/avatar/00034587632094500000000000000000?d=retro">
					<div class="flr">
						<div class="messages">
							<p class="msg" id="msg-0">
								<%=detail_list.get(i).getTalking()%>
							</p>
						</div>
						<span class="timestamp"><span class="username"><%=detail_list.get(i).getTalker()%></span>•<span class="posttime"><%=detail_list.get(i).getTalking_at()%></span></span>
					</div>
				</div>
			</article>
					
			<%		
					}
				}
			%>
			
		</section>
		<form class="chat-input" action="SendChatService.do">
			<input type="text" autocomplete="on" name="talking" placeholder="메세지 보내기">
			<button>
                    <svg style="width:24px;height:24px" viewBox="0 0 24 24"><path fill="rgba(0,0,0,.38)" d="M17,12L12,17V14H8V10H12V7L17,12M21,16.5C21,16.88 20.79,17.21 20.47,17.38L12.57,21.82C12.41,21.94 12.21,22 12,22C11.79,22 11.59,21.94 11.43,21.82L3.53,17.38C3.21,17.21 3,16.88 3,16.5V7.5C3,7.12 3.21,6.79 3.53,6.62L11.43,2.18C11.59,2.06 11.79,2 12,2C12.21,2 12.41,2.06 12.57,2.18L20.47,6.62C20.79,6.79 21,7.12 21,7.5V16.5M12,4.15L5,8.09V15.91L12,19.85L19,15.91V8.09L12,4.15Z"></path></svg>
                </button>
		</form>
	</section>


</body>
</html>