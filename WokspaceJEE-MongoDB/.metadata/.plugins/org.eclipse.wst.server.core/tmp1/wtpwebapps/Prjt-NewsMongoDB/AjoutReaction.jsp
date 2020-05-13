<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*, Metier.*" %>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="listChoixCss/css/add.css">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="listChoixCss/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="afficheTableCss/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="afficheTableCss/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="afficheTableCss/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="afficheTableCss/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="afficheTableCss/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="afficheTableCss/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="afficheTableCss/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="afficheTableCss/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="listChoixCss/css/util1.css">
	<link rel="stylesheet" type="text/css" href="listChoixCss/css/main1.css">
<!--===============================================================================================-->
</head>


  <% user user=(user) session.getAttribute("user"); %>
   <% ArrayList<String> urls=(ArrayList<String>) application.getAttribute("urls"); %> 
<body>

<div>
<%=user.getNomPrenom()%> 
   		<a href="ServletService">  Se deconnecter ... </a>
</div>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form"  action="ServletService" method="post">
				<span class="contact100-form-title">
					Ajouter Reaction
				</span>


				<div class="wrap-input100">
					<div class="label-input100">List Des News</div>
					<div>
						<select class="js-select2" name="listUrl">
							<% for(String url: urls){ %>
				     <OPTION> <%=url %> <%}%>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" >
					 <b>Reaction </b>  
			 <input type="radio"  name="reaction"   value="Jaime" checked > J'aime 
				     <input type="radio"  name="reaction"   value="jedeteste" >  je deteste
	   			
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<input type="submit" name="action" value="Valider"  
			                             width="60" height="60" class="contact100-form-btn" ><br>
				</div>

				
					
					<div class="container-contact100-form-btn">	
			<input type="submit" name="action" value="Ajout news"  
			                             width="60" height="60" class="contact100-form-btn" > 
			
			</div>
			<div class="container-contact100-form-btn">
				<input type="submit" name="action" value="Affichage news" 
			                            width="60" height="60" class="contact100-form-btn">
			</div>

			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('listChoixCss/images/bg-011.jpg');">
			</div>
		</div>
	</div>





<!--===============================================================================================-->
	<script src="afficheTableCss/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="afficheTableCss/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="afficheTableCss/vendor/bootstrap/js/popper.js"></script>
	<script src="afficheTableCss/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="afficheTableCss/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
		$(".js-select2").each(function(){
			$(this).on('select2:open', function (e){
				$(this).parent().next().addClass('eff-focus-selection');
			});
		});
		$(".js-select2").each(function(){
			$(this).on('select2:close', function (e){
				$(this).parent().next().removeClass('eff-focus-selection');
			});
		});

	</script>
<!--===============================================================================================-->
	<script src="afficheTableCss/vendor/daterangepicker/moment.min.js"></script>
	<script src="afficheTableCss/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="afficheTableCss/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="afficheTableCss/js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
 
    <% session.setAttribute("page", "AjoutReaction");  %>
</body>
</html>