<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*, Metier.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Formulaire d'ajout de news</title>
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
	<% user user=(user) session.getAttribute("user"); %>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(loginCss/images/news.jpg);">
					<span class="login100-form-title-1">
						L'AJOUT DE NEWS
					</span>
				</div>

				<form action = "ServletService" method ="post">
					<div class="wrap-input100 validate-input m-b-26">
						<span class="label-input100">Email</span>
						<input class="input100" type="text" name="email" value= <%=user.getEmail()%> disabled>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate="Url is required">
						<span class="label-input100">Url</span>
						<input class="input100" type="text" name="url" placeholder="Enter un Url">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate="Titre is required">
						<span class="label-input100">Titre</span>
						<input class="input100" type="text" name="titre" placeholder="Enter un Titre">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<input type="submit" name="action" value="Valider" class="login100-form-btn">
						<br><br><br>
					</div>
					<div class="container-login100-form-btn">
						<input type="submit" name="action" value="Ajout reaction" class="login100-form-btn">
						<br><br><br>
					</div>	
					<div class="container-login100-form-btn">
						<input type="submit" name="action" value="Affichage news" class="login100-form-btn">
						<br><br><br>
					</div>
					
					<div>
					<p><% session.setAttribute("page", "AjoutNews");  
						  String erreur= (String) request.getAttribute("erreur");
						  if (erreur!=null ){
								out.print(erreur);
											}
						%>
    				</div>
				</form>
				
				<div >
				<p align="right">
				<b><%=user.getNomPrenom()%></b>
	   			<a href="ServletService">  Se deconnecter ... </a>
				</p>
				</div>
				
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