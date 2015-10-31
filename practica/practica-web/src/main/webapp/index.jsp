<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="es.uc3m.tiw.web.*" %>
 <%		
 	CursoDAO cursoDao = new CursoDAO();
	UsuarioDAO usuarioDao = new UsuarioDAO();
	
	Cursos curso1 = new Cursos();
	curso1.setNombreCurso("Informatica");
	curso1.setDescripcion("Es un curso cojonudo");
	curso1.setIdprofesor("e.garciacentenera@gmail.es");
	curso1.setProfesor("Eduardo Garcia");
	cursoDao.crearCurso(curso1);
	Cursos curso2 = new Cursos();
	curso2.setNombreCurso("Matematica Discreta");
	curso2.setDescripcion("Es un curso cojonudo");
	curso2.setIdprofesor("e.garciacentenera@gmail.es");
	curso2.setProfesor("Eduardo Garcia");
	cursoDao.crearCurso(curso2);
	Cursos curso3 = new Cursos();
	curso3.setNombreCurso("Historia del Arte");
	curso3.setDescripcion("Es un curso cojonudo");
	curso3.setIdprofesor("e.garciacentenera@gmail.es");
	curso3.setProfesor("Eduardo Garcia");
	cursoDao.crearCurso(curso3);
	Cursos curso4 = new Cursos();
	curso4.setNombreCurso("Tiw");
	curso4.setDescripcion("Es un curso cojonudo");
	curso4.setIdprofesor("e.garciacentenera@gmail.es");
	curso4.setProfesor("Eduardo Garcia");
	cursoDao.crearCurso(curso4);
	
	Usuario usuario1 = new Alumno();
	usuario1.setNombre("Eduardo");
	usuario1.setApellido1("Garcia");
	usuario1.setApellido2("Centenera");
	usuario1.setEmail("e.garciacentenera@gmail.com");
	usuario1.setPassword("Hoces1com.");
	usuarioDao.crearUsuario(usuario1);
	
	Usuario usuario2 = new Alumno();
	usuario2.setNombre("Fernando");
	usuario2.setApellido1("Garcia");
	usuario2.setApellido2("Centenera");
	usuario2.setEmail("e.garciacentenera@gmail.es");
	usuario2.setPassword("Hoces1com.");
	usuarioDao.crearUsuario(usuario2);
	
	Usuario usuario3 = new Alumno();
	usuario3.setNombre("Jose");
	usuario3.setApellido1("Garcia");
	usuario3.setApellido2("Centenera");
	usuario3.setEmail("e.garciacentenera@hotmail.com");
	usuario3.setPassword("Hoces1com.");
	usuarioDao.crearUsuario(usuario3);
	
	Usuario usuario4 = new Alumno ();
	usuario4.setNombre("Jose");
	usuario4.setApellido1("Garcia");
	usuario4.setApellido2("Centenera");
	usuario4.setEmail("jose@hotmail.com");
	usuario4.setPassword("Jose1-jose");
	usuarioDao.crearUsuario(usuario4);
	
	Usuario admin = new Alumno();
	admin.setNombre("Jose");
	admin.setApellido1("Garcia");
	admin.setApellido2("Centenera");
	admin.setEmail("administrador@administrador.com");
	admin.setPassword("Admin1-admin");
	usuarioDao.crearUsuario(admin);

	 %>
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
<body>
<!-- //end-smoth-scrolling -->
<!--header start here-->
<div class="header">
	<div class="container">
		<div class="header-main">
			 <div class="logo">
			 	<h1><a href="index.jsp">Online<span class="logo-clr">School</span></a></h1>
			 </div>
			 <div class="head-right">
			   <div class="top-nav">
			   		<span class="menu"> <img src="resources/images/icon.png" alt=""/></span>
					<ul class="res">
						<li><a  href="index.jsp" class="active"><span data-hover="Home"> Home</span></a></li>
						<li><a href="browser.jsp"><span data-hover="Courses">Courses</span></a></li>
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
					<li><a  href="login.jsp"><span  data-hover="SingIn">SingIn </span> </a></li>
					<li><a  href="singup.jsp"><span  data-hover="SingUp"> SingUp</span> </a></li>
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
<div class="banner">
	<div class="container">
		<div class="banner-main">
			<h2>Lorem ipsum dolor sit ametdolores<br>consectetur adipiscing elit</h2>
			<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
			<div class="bann-btn">
				<a href="#">Read More</a>
			</div>
		</div>
	</div>
</div>
<!--banner end here-->
<div class="grid-main">
	<div class="container">
			<div class="process">
				<h3>What is Our Process?</h3>
				<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids</p>
			    <div class="process-bottom">
			    	<div class="col-md-4 process-grid">
			    		<span class="glyphicon glyphicon-education" aria-hidden="true"> </span>
			    		<h4>1.Collect Ideas</h4>
			    		<p>At vero eos et accusamus et iusto odio dignissimos ducimus.</p>
			    	</div>
			    	<div class="col-md-4 process-grid">
			    		<span class="glyphicon glyphicon-lamp" aria-hidden="true"> </span>
			    		<h4>2.Preparing</h4>
			    		<p>At vero eos et accusamus et iusto odio dignissimos ducimus.</p>
			    	</div>
			    	<div class="col-md-4 process-grid">
			    		<span class="glyphicon glyphicon-hourglass" aria-hidden="true"> </span>
			    		<h4>3.Finalizing</h4>
			    		<p>At vero eos et accusamus et iusto odio dignissimos ducimus.</p>
			    	</div>
			      <div class="clearfix"> </div>
			   </div>
	     </div>	
      </div>
   </div>
      <div class="work">
      	<div class="container">
				<div class="work-top">
					<h3>Our Latest Works</h3>
					<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame</p>
				</div>
				<div class="work-bottom">
					<div class="col-md-3 portfolio-wrapper">		
							<a href="resources/images/b-w1.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title">
						     <img src="resources/images/w1.jpg" alt="" class="img-responsive"><div class="b-wrapper"><div class="b-animate b-from-left    b-delay03"><img src="images/link.png" alt=""/></div>
						  		</div></a>
                         <div class="work-details">
					   	  <h3>Sed perspiciatis</h3>
					   	 <p>Our plane is unbelivable</p>
					   </div>
					</div>
					<div class="col-md-3 portfolio-wrapper">		
							<a href="resources/images/b-w2.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title">
						     <img src="resources/images/w2.jpg" alt="" class="img-responsive"><div class="b-wrapper"><div class="b-animate b-from-left    b-delay03"><img src="images/link.png" alt=""/></div>
						  		</div></a>
                         <div class="work-details">
					   	  <h3>Sed perspiciatis</h3>
					   	 <p>Our plane is unbelivable</p>
					   </div>
					</div>
					<div class="col-md-3 portfolio-wrapper">		
							<a href="resources/images/b-w3.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title">
						     <img src="resources/images/w3.jpg" alt="" class="img-responsive"><div class="b-wrapper"><div class="b-animate b-from-left    b-delay03"><img src="images/link.png" alt=""/></div>
						  		</div></a>
                         <div class="work-details">
					   	  <h3>Sed perspiciatis</h3>
					   	 <p>Our plane is unbelivable</p>
					   </div>
					</div>
					<div class="col-md-3 portfolio-wrapper">		
							<a href="resources/images/b-w4.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title">
						     <img src="resources/images/w4.jpg" alt="" class="img-responsive"><div class="b-wrapper"><div class="b-animate b-from-left    b-delay03"><img src="images/link.png" alt=""/></div>
						  		</div></a>
                         <div class="work-details">
					   	  <h3>Sed perspiciatis</h3>
					   	 <p>Our plane is unbelivable</p>
					   </div>
					</div>
				<div class="clearfix"> </div>
			 </div>
		  </div>
	</div>
	<div class="recent-posts">
		<div class="container">
				<div class="recent-bottom">
					<div class="col-md-6 recent-left">
						<h3> What we do</h3>
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt</p>
					    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa.</p>
					   <ul>
					   	<li><a href="#">But I must explain to you how all this mistaken idea</a></li>
					   	<li><a href="#">At vero eos et accusamus iusto dignissimos ducimus</a></li>
					   	<li><a href="#">On the other hand, we denounce and dislike men</a></li>
					   </ul>
					</div>
					<div class="col-md-6 recent-right">
							<img src="resources/images/post.jpg" alt="" class="img-responsive">
					</div>
				   <div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
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
				<p class="footer-copyrts">Â© 2015 Online School . Design  by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
		</div>
	  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--footer end here-->
</body>
</html>
