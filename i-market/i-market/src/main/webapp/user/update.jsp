<%@page import="com.main.model.WebMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">


<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	h1{
		line-height: 200px;
		text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
		color: yellow;
	}
	
	 fieldset{
 
	width: 700px;
	height: 600px;
	position: absolute;
    top: 55%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 20px;
    border: 1px solid #000;
	}
	
	#user_id {
		height:30px;
	}
	
	#user_pw {
		height:65px;
		width: 400px;
	}
	
	#user_phone {
	height:65px;
		width: 400px;
	}
	
	#user_nick {
	height:65px;
		width: 400px;
	}
	
	#user_addr {
	height:65px;
		width: 400px;
	} 
	
	#pro_wrapper {
	height:30px;
	}
	
	#button{
		width:300pt;
	height:40pt; 
	background-Color:#f2ec1d;
	border: 1px solid #000;
	border-radius: 10px;
	}
	
		.index_01{
	text-decoration:none;
	font-family: 'Hi Melody', cursive;
	color:#f2ec1d;
	font-size: 60px;
	font-style: normal;
	font-weight: 100;
	text-shadow: 1px 0 10px #110f10;
}
	
	
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
	
		input[type="submit"]
	{
	 font-family: 'Hi Melody', cursive;
  background: var(--background);
  font-size: 20px;
	
	}
	 
	 
	 .click{
	 
	 font-family:'Hi Melody', cursive;
   background: var(--background);
   font-size: 30px;
	 }
	
	input[type="text"]
	{
  font-size: 20px;
	
	}
	
	input[type="password"]
	{
  font-size: 20px;
	
	}
	
	input[type="submit"],input[type="text"],a,legend,
 div,fieldset,input[type="password"],h1,#button,#user_addr{

	 font-family:'Hi Melody', cursive;
}
</style>
</head>
<body style="text-align: center;">
	<%
		WebMemberDTO loginMember = (WebMemberDTO)session.getAttribute("loginMember");
	%>
	<div>
			<h1 >
				<a class="index_01" style="font-family: 'Hi Melody', cursive;" href="main.jsp">아이 i 마켓</a>
			</h1>
			</div>
		<fieldset>
			<legend class="click" style="font-family: 'Hi Melody', cursive;">회원정보수정</legend>
			<form action="../Update" method="post" enctype="multipart/form-data">
				<div id="join_wrapper">
					<div id="id" style="padding: 5px;  font-size: 25px;">
						접속한 ID : <%=loginMember.getUser_id() %>
					</div>
					<div id="pw" style="padding: 5px;font-size: 20px;" >
						<input type="password" name="user_pw" id="user_pw" placeholder="PW를 입력하세요">
					</div>
					<div id="nick" style="padding: 5px;font-size: 20px;">
						<input type="text" name="user_nick" id="user_nick" value="<%=loginMember.getUser_nick() %>" placeholder="닉네임을 입력하세요" >
					</div>
					<div id="phone" style="padding: 5px;">
						<input type="text" name="user_phone" id="user_phone" value="<%=loginMember.getUser_phone() %>" placeholder="전화번호를 입력하세요">
					</div>
					<div id="addr" style="padding-top: 5px;">
						<input type="text" name="user_addr" id="user_addr" value="<%=loginMember.getUser_addr() %>" placeholder="집주소를 입력하세요">
					</div>
					<div id="pro_wrapper" style="font-size: 30px; padding-bottom: 10px;">
						<h5>프로필 사진을 선택하세요</h5>
					</div>
					<div id="profile" style="padding-bottom: 5px;">
						<input type="file" name="user_profile">
					</div>
					<div id="join" style="padding: 20px;">
						<input type="submit" id="button" value="Check" class="button fit">
					</div>
				</div>
			</form>
		</fieldset>
</body>
</html>