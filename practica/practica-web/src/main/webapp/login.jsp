<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online School A Education School category Flat bootstrap Responsive  Website Template | Home :: w3layouts</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="resources/css/style1.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resources/js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="css/swipebox.css" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Refinement Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Sintony:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default', //Types: default, vertical, accordion           
							width: 'auto', //auto or any width like 600px
							fit: true   // 100% fit in a container
						});
					});
				   </script>
</head>
<body>
<!-- //end-smoth-scrolling -->
<!--header start here-->
<div class="header">
	<div class="container">
		<div class="header-main">
			 <div class="logo">
			 	<h1><a href="index.html">Online<span class="logo-clr">School</span></a></h1>
			 </div>
			 <div class="head-right">
			   <div class="top-nav">
			   		<span class="menu"> <img src="resources/images/icon.png" alt=""/></span>
					<ul class="res">
						<li><a  href="index.jsp"><span data-hover="Home"> Home</span></a></li>
						<li><a href="browser.jsp"><span data-hover="Courses">Courses</span></a></li>
						<li><a href="contact.html"><span data-hover="Contact">Contact</span></a></li>
					</ul>
					<div class="clearfix"> </div>
				<!-- script-for-menu -->
							 <script>
							   $( "span.menu" ).click(function() {
								 $( "ul.res" ).slideToggle( 300, function() {
								 // Animation complete.
								  });
								 });
							</script>
			<!-- /script-for-menu -->
			  </div>
			 <div class="top-nav2">
				<div class="top-nav">
				<!--
				<ul >
					<li><a class="active" href="login.html"><span>SingUp </span> </a></li>
					<li><a class="active" href="login.html"><span> SingIn</span> </a></li>
				</ul>
				-->
				</div>
			</div>
			<div class="clearfix"> </div>
		   </div>
		   <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--header end here-->
<!--banner start here-->

<!--banner end here-->
<div class="main">
		
	 <div class="sap_tabs">	
		 <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
			  <ul class="resp-tabs-list">
				  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><p>Sign in</p></li>
			  	  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><p>Sign up</p></li>
				  <div class="clear"></div>
			  </ul>		
			  <!---->	
			  <div name ="Usuario">
			  </div>	  	 
			 <div class="resp-tabs-container">
				  <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="facts">
									<!--login1-->
								<div class="register">
									<form action="ServletRegistro" method="post">	
										<input placeholder="Name" name = "nombre_Usuario" type="text" required="">
										<input placeholder="Primer Apellido" name = "apellido1" type="text" required="">	
										<input placeholder="Segundo Apellido" name = "apellido2" type="text" required="">	
										<input placeholder="Direccion" name = "direccion" type="text" required="">	
										<input placeholder="Email Address" name = "email" type="text" required="">									
										<input placeholder="Password" type="password" name = "password" required="">
										<input type = "hidden" name = "accion" value = "registrar">	
										<!--<input placeholder="Confirm Password" type="password" required="">-->
										<div class="sign-up">
											<input type="submit" name="registrar" value="Create Account"/>
										</div>
									</form>
								</div>
							</div>
				 </div>		
				 <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					  <div class="facts">
						  <div class="register">
									<form action="ServletLoginUsuario" method="post">										
										<input placeholder="Email Address" class="mail" name ="usuario" type="text" required="">									
										<input placeholder="Password" class="lock" name ="password" type="password" required="">	
										<input type = "hidden" name = "accion" value = "logear">									
										<div class="sign-up">
											<input type="submit" name="logear" value="Submit"/>
										</div>
									</form>
								</div>
					  </div> 
				  </div> 			        					            	      
			  </div>	
		  </div>	
	 </div>

	</div>

<!--footer star here-->
<div class="footer">
  <div class="container">
	  <div class="footer-main">
		<div class="footer-top">
			<div class="col-md-3 footer-news">
			<h5>Newsletter</h5>
			</div>
			<div class="col-md-9 ftr-email">
				<input type="text" value="ENTER EMAIL" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='ENTER EMAIL';}">
				<input type="submit" value="SUBSCRIBE" >
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="foter-bottom">
					<ul class="ftr-socialicons">
						<li><a href="#" class="facebook"> </a></li>
						<li><a href="#" class="twitter"> </a></li>
						<li><a href="#" class="gmail"> </a></li>
						<li><a href="#" class="print"> </a></li>
					</ul>
				<p class="footer-copyrts">Â© 2015 Online School . Design  by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
		</div>
	  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--footer end here-->
</body>
</html>