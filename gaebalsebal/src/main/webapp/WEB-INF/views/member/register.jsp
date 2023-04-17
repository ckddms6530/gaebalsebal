<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>


  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resource/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resource/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resource/dist/css/adminlte.min.css">
  
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resource/dist/css/custom.css">
  
  <script type="text/javascript">
  
  
  function showPregnancyDiv() {
	    var pregnancyDiv = document.getElementById("pregnancyDiv");
	    pregnancyDiv.style.display = "block";
	}

	function hidePregnancyDiv() {
	    var pregnancyDiv = document.getElementById("pregnancyDiv");
	    pregnancyDiv.style.display = "none";
	}
	
	
	function confirm_pw() {
	  var password = document.getElementById("user_pw").value;
	  var confirmPassword = document.getElementById("confirm_user_pw").value;
	  var passwordMatchMsg = document.getElementById("passwordMatchMsg");

	  if (password == confirmPassword) {
	    document.getElementById("confirm_user_pw").style.backgroundColor = "#c3e6cb";
	    passwordMatchMsg.innerHTML = "<span style='color:green'>비밀번호가 일치합니다.</span>";
	  } else {
	    document.getElementById("confirm_user_pw").style.backgroundColor = "#f5c6cb";
	    passwordMatchMsg.innerHTML = "<span style='color:red'>비밀번호가 일치하지 않습니다.</span>";
	  }
	}
	
	function idCheck() {
		  var id = document.getElementById("user_id").value;
		  var idAlert = document.getElementById("idAlert");
		  var signupBtn = document.getElementById("signupBtn");

		  if (id.length < 5) {
			document.getElementById("user_id").style.backgroundColor = "#f5c6cb";
		    idAlert.innerHTML = "<span style='color:red'>아이디는 5자 이상 입력해주세요.</span>";
		    idAlert.style.display = "block";
		    signupBtn.disabled = true;
		    
		    
		  } else {
			  document.getElementById("user_id").style.backgroundColor = "#c3e6cb";
		    idAlert.style.display = "none";
		    signupBtn.disabled = false;
		    
		    $.ajax({
		        type: "POST",
		        url: "/member/api/idCheck",
		        data: {
		          user_id: id
		        },
		        success: function(result) {
		          if (result == 1) {
		        	  idAlert.style.display = "block";
		        	document.getElementById("user_id").style.backgroundColor = "#f5c6cb";
		            idAlert.innerHTML = "<span style='color:red'>이미 존재하는 아이디입니다.</span>";
		            idAlert.show();
		            signupBtn.prop("disabled", true);
		          }else {
		        	  idAlert.style.display = "block";
		        	  document.getElementById("user_id").style.backgroundColor = "#c3e6cb";
		        	  idAlert.innerHTML = "<span style='color:green'>사용가능한 아이디입니다.</span>";
		        	  
		          }
		        },
		        error: function(e) {
		          console.log(e);
		        }
		      });
		    
		  }
		}
	
  </script>
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="../../index2.html" class="h1"><b>삐</b>약</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">회원가입</p>

      <form action="/member/signup/check" method="post">
      <div id="idAlert"></div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="ID" name="user_id" id="user_id" onkeyup="idCheck()">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="Email" name="user_email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="비밀번호" id="user_pw" name="user_pw">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div id="passwordMatchMsg"></div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="비밀번호 확인" id="confirm_user_pw" onkeyup="confirm_pw()">
          <div class="input-group-append">
            <div class="input-group-text">
            
              <span class="fas fa-lock"></span>
              
            </div>
            
          </div>
          
        </div>
        
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="닉네임" name="user_nickname">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="date" class="form-control" placeholder="생년월일" name="user_birthday">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
      
      
      <div class="row">
      
	      	<div class="col-6">
	       	 <label> 성별 
	        	<div class="btn-group btn-group-toggle" data-toggle="buttons">
					
	                  <label class="btn btn-secondary" >
	                    <input type="radio"  name="user_gender" value="M" id="option_a2" autocomplete="off" onclick="hidePregnancyDiv()"> 남
	                  </label> 
	                  <label class="btn btn-secondary">
	                    <input type="radio"  name="user_gender" value="F" id="option_a3" autocomplete="off" onclick="showPregnancyDiv()"> 여
	                  </label>
	                  
	                
	       		 </div>
	       	  </label>
	       	 </div><!-- col - 6 -->
	        
	        
	        <div class="col-6"  id="pregnancyDiv" style = "display: none">
	                <label> 임신여부 
	        			<div class="btn-group btn-group-toggle" data-toggle="buttons" >
					
	                <label class="btn btn-secondary" >
	                    <input type="radio" name="user_pregnant" value="Y" id="option_a2" autocomplete="off" > O
	                </label> 
	                  <label class="btn btn-secondary">
	                    <input type="radio" name="user_pregnant"  value="N" id="option_a3" autocomplete="off" > X
	        		</label>
	                   </div>
	                
	        </div>
	       			 </label>
        
        </div>
        <!-- rew -->

        
        <div class="row">
          <div class="col-6">
<!--             <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div> -->
            
             <button type="submit" class="btn btn-primary btn-block" id="signupBtn">회원가입</button>
          </div>
          <!-- /.col -->
          <div class="col-6">
            
            <button type="button" class="btn btn-block btn-default" onclick="location.href='/member/login'">취소</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

<!--       <div class="social-auth-links text-center">
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          Sign up using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i>
          Sign up using Google+
        </a>
      </div> -->

      <!-- <a href="login.html" class="text-center">I already have a membership</a> -->
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="${ pageContext.servletContext.contextPath }/resource/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${ pageContext.servletContext.contextPath }/resource/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${ pageContext.servletContext.contextPath }/resource/dist/js/adminlte.min.js"></script>
</body>
</html>