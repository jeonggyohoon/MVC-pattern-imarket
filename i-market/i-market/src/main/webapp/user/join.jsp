<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">



<meta charset="UTF-8">
<title>Join Page</title>
<style type="text/css">
 fieldset{
 
	width: 800px;
	height: 600px;
	position: absolute;
    top: 57%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 20px;
    border: 1px solid #000;
	}
	
	div#id{
	
	padding-top: 30px;
	top: 40%;
    left: 25%;
	}
	
	#user_id {
	height:65px;
		width: 400px;
	}
	
	div#pw{
	padding-top: 30px;
	top: 40%;
    left: 25%;
	}
	
	#user_pw {
	height:65px;
		width: 400px;
	}
	
	div#phone{
	padding-top: 30px;
	top: 40%;
    left: 25%;
	}
	
	#user_phone {
		height:65px;
		width: 400px;
	}
	
	div#nick{
	padding-top: 30px;
	top: 40%;
    left: 25%;
	}
	
	#user_nick {
		height:65px;
		width: 400px;
	}
	
	div#addr{
	padding-top: 30px;
	top: 40%;
    left: 25%;
	}
	
	#user_addr {
		height:65px;
		width: 400px;
	}
	
	div#join{
	padding-top: 30px;
	height: auto;
	top: 77%;
    left: 39%;
	}
	
	#button{
	width:300pt;
	height:40pt; 
	background-Color:#f2ec1d;
	border: 1px solid #000;
	border-radius: 10px;
	}
	
	h1{
 line-height: 150px;
	 text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	 color: yellow;
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
	 
	 .Join{
	
	 font-family: 'Hi Melody', cursive;
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
 div,fieldset,input[type="password"]{

	 font-family:'Hi Melody', cursive;
}
	

</style>
</head>
<body align="center">
	<ul class="actions vertical">
	<div>
			<h1 >
				<a class="index_01" style="font-family: 'Hi Melody', cursive;" href="main.jsp">아이 i 마켓</a>
			</h1>
			</div>
		<fieldset>
			<legend class="Join" style="font-family: 'Hi Melody', cursive;">Join</legend>
			<form action="../Join" method="post">
				<div id="join_wrapper">
					<div id="idv">
						<input type="text" name="user_id" id="user_id" placeholder="ID을 입력하세요">
					</div>
					<div id="pw">
						<input type="password" name="user_pw" id="user_pw" placeholder="PW를 입력하세요">
					</div>
					<div id="phone">
						<input type="text" name="user_phone" id="user_phone" placeholder="전화번호를 입력하세요">
					</div>
					<div id="nick">
						<input type="text" name="user_nick" id="user_nick" placeholder="닉네임를 입력하세요">
					</div>
					<div id="addr">
						<input type="text" name="user_addr" id="user_addr" placeholder="집주소를 입력하세요">
					</div>
					<div id="join">
						<input type="submit" id="button" value="JoinUs" class="button fit">
					</div>
				</div>
			</form>
		</fieldset>
	</ul>
</body>
</html>