<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link rel="stylesheet" href="/css/Login.css">
<script src="https://kit.fontawesome.com/da1ffc1acd.js" crossorigin="anonymous"></script>
<style>
#forgot-passdiv{text-align:right; width:480px}
input::placeholder{
	color: darkgray
}
</style>



<title>로그인폼</title>
</head>
<body>

	<div id="empty"></div>
	<div id="container">
		<!-- Cover Box -->
		<div id="cover">
			<!-- Sign Up Section -->
			<h1 class="sign-up">처음이신가요?
				<i class="fa-solid fa-child fa-bounce" style="color: #f09a38;"></i>
			</h1>
				<p class="sign-up">반갑습니다!<br><br><b>개발새발을 이용하시려면 가입이 필요합니다</b></p>
				<a class="button sign-up" href="#cover"><b>가입하기 ▶</b></a>
				<!-- Sign In Section -->
				<h1 class="sign-in">로그인하러 가기

				<i class="fa-solid fa-otter fa-bounce fa-xl" style="color: #260812;"></i>
				</h1>
				<p class="sign-in">회원이신가요?<br><br><b>회원이시면 아래 버튼을 눌러주세요</b></p>
				<br>
				<a class="button sub sign-in" href="#">◀ 로그인</a>
				</div>
				
				
	<!-- Login Box -->
	<div id="login">
	<p></p>
	<p></p>
	<h1 style="font-size:50px;">로그인</h1>
	<form action="/main">
	<input type="text" placeholder="ID" autocomplete="off"><br>
	<input type="password" placeholder="Password" autocomplete="off">
	<div id="forgot-passdiv"><a id="forgot-pass" href="#">비밀번호 찾기</a></div><br>
	<input class="submit-btn" type="submit" value="접속하기" >
	</form>
	</div>
	
	<!-- Register Box -->
	<div id="register">
	<p></p>
	<p></p>
	<h1 style="font-size:50px;">회원가입</h1>
	<p></p>
	<form action="">
	<input type="text" placeholder="Nickname" autocomplete="off"><br>
	<input type="text" placeholder="Id" autocomplete="off"><br>
	<input type="password" placeholder="Password" autocomplete="off"><br>
	<input class="submit-btn" type="submit" value="회원가입">
	</form>
	</div>
	</div> <!-- END Container -->




</body>
</html>