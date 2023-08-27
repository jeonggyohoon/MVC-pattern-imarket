<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">


<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
	 fieldset{
	width: 600px;
	height: 500px;
	position: absolute;
    top: 55%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 20px;
    border: 1px solid #000;
	}
	
	div#id{
	top: 24%;
    left: 25%;
    padding-top: 50px;
	}
	
	#user_id {
		height:65px;
		width: 400px;
	}
	
	div#pw{
	padding-top: 50px;
	top: 40%;
    left: 25%;
	}
	
	#user_pw {
		height:65px;
		width: 400px;
	}
	
	div#login{
	height: auto;
	padding-top:50px; 
	}
	
	#button1{
	width:300pt;
	height:40pt; 
	background-Color:#f2ec1d;
	border: 1px solid #000;
	border-radius: 10px;
	}
	
	div#join{
	height: auto;
	padding-top:30px; 
		}
	
	#button2{
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
	font-family:  'Hi Melody', cursive;
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

	.login{
	
	 font-family:'Hi Melody', cursive;
  background: var(--background);
   font-size: 30px;
	
	}
	
	
	input[type="submit"]:hover{
	
			
			background: #000;
			
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


input[type="submit"]:hover
.button:hover{
background: #fff !important;
}

	
</style>
</head>
<body align="center" class="homepage is-preload" style=" font-family:'Hi Melody', cursive;">
<!-- Menu -->
		<ul class="links">
		<div>
			<h1 >
				<a class="index_01" style="font-family:'Hi Melody', cursive;" href="main.jsp">아이 i 마켓</a>
			</h1>
			</div>
			
		<fieldset>
		<legend class="login" style="font-family: 'Hi Melody', cursive;">Login</legend>
		
		
		
		
			<form action="../Login" method="post">
			<div id="login_wrapper">
				<div id="id">
				<input type="text" name="user_id" id="user_id" placeholder="    ID을 입력하세요">
				</div>
				<div id="pw">
				<input type="password" name="user_pw" id="user_pw" placeholder="    PW를 입력하세요">
				</div>
				<div id="login">
				<input type="submit"  id="button1" value="Login" class="button fit">
				</div>
			</div>
			</form>
				<div id="join">
				<a href="join.jsp">
				<input type="submit"  id="button2" value="Join" class="button fit">
				</a>
				</div>
			</fieldset>
		</ul>
</body>
</html>