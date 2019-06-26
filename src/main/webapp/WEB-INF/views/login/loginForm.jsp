<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/css/main.css">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="../clever/style.css">
</head>
<body onload="document.f.id.focus();">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-90 p-b-30">
			
				<c:url value="/login" var="loginUrl" />
				<form:form name="f" action="${loginUrl}" method="POST" class="login100-form validate-form">
				    
					<div class="text-center p-t-55 p-b-30">
						<span class="login100-form-title p-b-40">
							Login
						</span>
					</div>
					
					<c:if test="${param.error != null}">
				        <p>&emsp;&emsp;&emsp;아이디 혹은 비밀번호가 잘못되었습니다.</p>
				    </c:if>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter email: ex@abc.xyz">
						<input class="input100" type="text" id="id" name="id" placeholder="ID">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
						<span class="btn-show-pass">
							<i class="fa fa fa-eye"></i>
						</span>
						<input class="input100" type="password" id="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 

					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">
							Login
						</button>
					</div><br/><br/><br/>
					
					<span class="login100-form-title p-b-40">
						Others
					</span>

					<div id='do_fblogin'>
						<a href="javascript:checkLoginState();" class="btn-login-with bg1 m-b-10">
							<i class="fa fa-facebook-official"></i>
							Login with Facebook
						</a>
					</div>
					<div id='do_gglogin'>
						<a href="#" id='google' class="btn-login-with bg2">
							<i class="fa fa-google"></i>
							Login with Google
						</a>
					</div>
					
						<br/>
		                  <p align="center">
		                  <span class="txt2 p-b-10">
		                     Don’t have an account?
		                  </span>
		
		                  <a href="join.do" class="txt3 bo1 hov1">
		                     Sign up now
		                  </a>
		                  </p>
				</form:form>
				
			</div>
		</div>
	</div>
	
	<!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <!-- Top Footer Area -->
        <div class="top-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Footer Logo -->
                        <div class="footer-logo">
                        </div>
                        <!-- Copywrite -->
                        <p><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->
    
	<script src="../resources/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../resources/login/vendor/animsition/js/animsition.min.js"></script>
	<script src="../resources/login/vendor/bootstrap/js/popper.js"></script>
	<script src="../resources/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../resources/login/vendor/select2/select2.min.js"></script>
	<script src="../resources/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="../resources/login/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../resources/login/vendor/countdowntime/countdowntime.js"></script>
	<script src="../resources/login/js/main.js"></script>
	<script src="../resources/login/js/fblogin.js"></script>
	
	<!-- Firebase App is always required and must be first -->
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-app.js"></script>
<!-- Add additional services you want to use -->
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-auth.js"></script>
<script src="../resources/login/js/login_init.js"></script>
<script src="../resources/login/js/gglogin.js"></script>
<script src="../resources/login/js/telelogin.js"></script>
</body>
</html>