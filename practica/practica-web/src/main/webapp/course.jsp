<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="es.uc3m.tiw.web.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online School A Education School category Flat bootstrap Responsive  Website Template | Home :: w3layouts</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="resources/css/style1.css" rel='stylesheet' type='text/css' />
<link href="resources/css/stylecourse.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resources/js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="resources/css/stylebrowser.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="resources/css/swipebox.css" type="text/css" media="all" />
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
<%
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
		BaseDatos bbdd = BaseDatos.getInstance();
		CursoDAO cursoDao = new CursoDAO ();
		Cursos curso = new Cursos();
		
%>	
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
						<li><a  href="index.html"><span data-hover="Home">Home</span></a></li>
						<li><a href="#" class="active">Courses</a></li>
						<li><a href="#"><span data-hover="Contact">Contact</span></a></li>
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
				<ul class="res">
					<li><a  href="login.html"><span  data-hover="SingUp">SingUp </span> </a></li>
					<li><a  href="login.html"><span  data-hover="SingIn"> SingIn</span> </a></li>
				</ul>
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
<div class="grid-main">
	<div class="recent-posts">
		<div class="container">
				<div class="recent-bottom">
					<div class="col-md-6 recent-left">
						<h3> Interfaces de Usuario</h3>
						<p>Descripción</p>
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt</p>
					    <ul>
					   	<li><span>Duración: </span><p>2 semanas</p></li>
					   	<li><span>Nivel de dificultad: </span><p>Dinamita</p></li>
					   	<li><span>Profesores: </span></li>
						<li><a>Albert Einstein</a></li>
						<li><a>Marie Curie</a></li>	
					   </ul>
					   </br>
					      <div class=" ftr-email">
							<input class="input" type="submit" value="Inscríbete" >
						</div>
					</div>		
				
					<div class="col-md-6 recent-right">
							<img src="resources/images/post.jpg" alt="" class="img-responsive">
					</div>
					
					
					
				   <div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
	 </div>
		 
      </div>
   </div>
      <div class="work">
      	<div class="container">
				<h2>Lecciones</h2>
				<div class="chapter">
					</br>
					<h3>Tema 1</h3>
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt</p>
					</br>
					<h4>Material</h4>
					<ul>
						<li><a>Albert Einstein</a></li>
						<li><a>Marie Curie</a></li>	
					</ul>
				</div>
				<div class="chapter">
					</br>
					<h3>Tema 1</h3>
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt</p>
					</br>
					<h4>Material</h4>
					<ul>
						<li><a>Albert Einstein</a></li>
						<li><a>Marie Curie</a></li>	
					</ul>
				</div>
					
				<div class="clearfix"> </div>
			 </div>
		  </div>
	
	
	<script src="resources/js/jquery.swipebox.min.js"></script> 
	    <script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
</script>
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
				<p class="footer-copyrts">© 2015 Online School . Design  by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
		</div>
	  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--footer end here-->
</body>
</html>