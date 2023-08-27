<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">



<title>Insert title here</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.tomain :hover{
	text-decoration: underline;
	background-color: red;
	border: 1px solid #FFD700;
	width:55pt;
	height:30pt;
	border-radius: 10px;
}

  fieldset{
	width: 600px;
	height: 400px;
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 20px;
    border: 1px solid #000;
	}
	
	#wrapper {
	padding-top:70px;
	height: auto;
	top: 25%;
    left: 18%;
    font-size: 30px;
	}
	
	#goMain {
	padding-top: 10px;
	height: auto;
	top: 50%;
    left: 39%;
	}
	
	#gologin{
	padding-top: 20px;
	height: auto;
	top: 50%;
    left: 39%;
	}
	
	.tomain{
	width:300pt;
	height:40pt; 
	background-Color:#f2ec1d;
	border: 1px solid #000;
	border-radius: 10px;
	
	
	
	}
	
	
	.login{
	width:300pt;
	height:40pt; 
	background-Color:#f2ec1d;
	border: 1px solid #000;
	border-radius: 10px;
	
	
	}
	
	h1{
	 line-height: 200px;
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

	.Success{
	 font-family: 'Hi Melody', cursive;
   background: var(--background);
   font-size: 30px;
	
	}
	
	
			input[type="submit"]{
	 font-family: 'Hi Melody', cursive;
  font-size: 20px;
	
	}
	 

	
</style>
</head>
<body align="center">
	<div>
			<h1 >
				<a class="index_01" style="font-family: 'Hi Melody', cursive;">아이 i 마켓</a>
			</h1>
			</div>
	

	<fieldset>
	<legend  class="Success">회원가입 성공 !</legend>
	<div id="wrapper">
				<%=session.getAttribute("user_nick") %>님!<br>
				회원이 되신 것을 축하합니다!<br>
	</div>
	<br><br>
	<div id="goMain">
		<a href="../main.jsp"><input class="tomain" type="submit" id="button" value="메인페이지로"></a>
		</div>
	<div id="gologin">
		<a href="login.jsp"><input class="login" type="submit" id="button" value="Login"></a>
	</div>
	</fieldset>
</body>
</html>