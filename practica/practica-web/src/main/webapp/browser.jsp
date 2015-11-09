<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="es.uc3m.tiw.web.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online School A Education School category Flat bootstrap Responsive  Website Template | Home :: w3layouts</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="resources/css/style1.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="resources/css/stylebrowser.css" rel="stylesheet" type="text/css" media="all"/>
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
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
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
<%@include file="cabecera.jsp" %>
<%
        String j = (String) context.getAttribute("i");
        BaseDatos bbdd = BaseDatos.getInstance();
        CursoDAO cursoDao = new CursoDAO ();
       
%>
<!--header end here-->
<!--banner start here-->
<!--banner end here-->
<div class="grid-main">
    <div class="container">
            <div class="process">
                <h3>Find the courses you are looking for</h3>
                <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids</p>
                  <div class="clearfix"> </div>
               </div>
               <br><br>      
               <div class="col-md-12 ftr-email">
                <input type="text" value="Search courses, teachers, categories..." onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Search courses, teachers, categories...';}">
                <input type="submit" value="Search" >
            </div>
         </div>   
         
      </div>
      <div class="work">
          <div class="container">
       
                    <div class="col-md-3 mesdiv">                               
                            <ul class="mes">
                                <li class="title"><p>Categor&iacute;­a</p></li>
                                <li><a>Arte</a></li>
                                <li><a>Ciencias</a></li>
                                <li><a>Filosof&iacute;a</a></li>
                                <li><a>Tecnolog&iacute;­a</a></li>
                                <li><a>Medicina</a></li><br />
                                <li class="title"><p>Idioma</p></li>
                                <li><a>Ingl&eacute;s</a></li>
                                <li><a>EspaÃ±ol</a></li>
                                <li><a>Alem&aacute;n</a></li>
                            </ul>
                    </div>
                    <div class="col-md-8 courses">
                   
                  
                        <ul class="list-courses">
                       
                        <%   
                            for (int i =0; i<bbdd.getCursos().size();i++){
                                Cursos cursos= bbdd.getCursos().get(i);
                           
                                %>
                                <li class="list-courses-contain">
                                    <img src="resources/images/book.jpg">
                                    <div>                        
                                                                          
                                            <h4><%=cursos.getNombreCurso()%></h4>
                                    
                                        <p>Profesor: <%=cursos.getProfesor() %><p>
                                   </div>
                                   <form action="servletCurso" method="post"  >  
                                        	 <input type="hidden" name="pedro" value="<%=cursos.getId() %>"> 
                               				 <input type="submit" name="desear" value="lodeseo"> 
                                        	 <input type ="hidden" name ="accionar" value = "desear">  
                              			    
                                        </form>
                                </li>
                                <%
                        }
                         %>
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
                <p class="footer-copyrts">Â© 2015 Online School . Design  by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
        </div>
      <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--footer end here-->
</body>
</html>