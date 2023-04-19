<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	
<head>
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>-->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="/js/member.js"></script>
  <link rel="stylesheet" href="/css/Login.css">
</head>
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
			<form action="/member/login" method="post">
				<input type="text" id="member_id_l" name="member_id" placeholder="ID" autocomplete="off"><br>
				<input type="password" id="member_pw_l" name="member_pw" placeholder="Password" autocomplete="off">
			<div id="forgot-passdiv"><a id="findID" href="/member/findId" >아이디 찾기</a></div><br>
			<div id="forgot-passdiv"><a id="findPw" href="/member/findPw">비밀번호 찾기</a></div><br>
				<input class="submit-btn" type="submit" value="접속하기" ><br><br>    
			<a href="https://kauth.kakao.com/oauth/authorize?client_id=cee5a07e009924c25886e5bb9d2614a0&redirect_uri=http://localhost:8880/member/kakao&response_type=code">
  			<img src="/img/kakao_login.png">
			</a>
			</form>
			</div>
	
	<!-- modal -->
	<div id="myModal" class="modal">
	  <div class="modal-content">
	    <span class="close">&times;</span>
	    <p id="modal-message"></p>
	  </div>
	</div>
	
	
	<!-- Register Box -->
	<div id="register">
   
    
   	 <h1 style="font-size:50px;">회원가입</h1>
  
    	<form action="/member/join" method="post">
	        <input type="text" id="member_nickname" name="member_nickname" placeholder="Nickname" autocomplete="off"><br>
	        <input type="text" id="member_id" name="member_id" placeholder="Id" autocomplete="off" style="width: 240px;">
			<button type="button" id="idCheckBtn" onclick="checkId();" style="height: 40px;">중복확인</button><br>
	        <input type="text" id="member_name" name="member_name" placeholder="Name" autocomplete="off"><br>
	        <input type="password" id="member_pw" name="member_pw" placeholder="Password" autocomplete="off" onkeyup="checkPassword();"><br>
			<input type="password" id="member_pw_confirm" name="member_pw_confirm" placeholder="Password Confirm" autocomplete="off" onblur="checkPassword();"><br>
			<label id="password-match-label" style="color: red;"></label><br>
	        <input type="text" id="member_email" name="member_email" placeholder="Email" autocomplete="off"><br>
	        <input class="submit-btn" type="submit" value="회원가입">
   		</form>
   		</div>
	</div> <!-- END Container -->
	
</body>
</html>