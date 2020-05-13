<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Formulaire d'autentification</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="loginCss/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginCss/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginCss/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginCss/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginCss/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="loginCss/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginCss/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginCss/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="loginCss/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginCss/css/util.css">
	<link rel="stylesheet" type="text/css" href="loginCss/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(loginCss/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<form class="login100-form validate-form" action = "ServletService" method ="post">
				
					<div class="wrap-input100 validate-input m-b-26" data-validate="Email is required">     <!-- remplace 18 par 26 -->
						<span class="label-input100">Email</span>
						<input class="input100" type="text" name="email" placeholder="Enter Email">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="motPasse" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div >
							<a href="inscription.jsp"  class="txt1">
								<p>S'inscrire ... </p>
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<input type="submit" name="login" value="Connexion" class="login100-form-btn">
					</div>
					
					<div>
					<br><br>
					<p><% session.setAttribute("page", "login");
	   					String erreur= (String) request.getAttribute("erreur");
	   					if (erreur!=null ){
						out.print(erreur);
	   					}
    					%>
    				</div>
				</form>
	
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="loginCss/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="loginCss/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="loginCss/vendor/bootstrap/js/popper.js"></script>
	<script src="loginCss/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="loginCss/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="loginCss/vendor/daterangepicker/moment.min.js"></script>
	<script src="loginCss/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="loginCss/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="loginCss/js/main.js"></script>

</body>
</html>