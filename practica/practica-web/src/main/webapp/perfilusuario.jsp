<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
    <%@page import="es.uc3m.tiw.web.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online School A Education School category Flat bootstrap Responsive  Website Template | Home :: w3layouts</title>
<link href="resources/css/style2.css" rel='stylesheet' type='text/css' />
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
            <!--webfonts-->
            <link href='http://fonts.googleapis.com/css?family=Lobster|Pacifico:400,700,300|Roboto:400,100,100italic,300,300italic,400italic,500italic,500' ' rel='stylesheet' type='text/css'>
            <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,500,600,700,300' rel='stylesheet' type='text/css'>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="resources/css/style1.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resources/js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="resources/css/perfil.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="resources/css/swipebox.css" type="text/css" media="all" />
<script type="text/javascript"     src="resources/js/perfil.js" > </script>   
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
        BaseDatos bbdd = BaseDatos.getInstance();
        CursoDAO cursoDao = new CursoDAO ();
        Cursos curso = new Cursos();
%>                  
   
<!--header end here-->
<div class="grid-main">
    <div class="container">
            <div class="process">
                <h3>Tu perfil</h3>
                    <hr>
                    <button class="boton2" id="saveprofile" >Guardar</button>
                    <button class="boton" id="edit" >Editar Perfil</button>
                    <a  href ="altacurso.jsp" >
                    <button class="boton3" >Crear Curso</button>
                    </a>
                    <div class="perfil">
                        <div style="display:none" class="profilevisible">
                            <p style="margin:1px;">Informaci&oacute;n de perfil:</p>
                        </div>
                        <div class="boxperfil">
                            <div class="infoperfil">
                                <div class="fotperf">
                                    <input style="display:none; margin-left:475px" class="editperfil" type="file" id="files" name="files[]" />
                                    <br />
                                    <output id="list" style="margin-left:475px"></output>
                                    <img style="margin-left:475px" class="primerafot" id="primerafot" src="resources/images/descarga.jpg">
                                </div>
                                <p id="name">- Nombre: <%=usuario.getNombre() %> </p>
                                <input style="display:none" class="editperfil" type="text" id="nombre" placeholder="Introduce un nombre">
                                <input style="display:none" type="image" id="saven" class="tic" alt="image" src="resources/images/save.png">
                                <p id="desc1">- Descripci&oacute;n</p>
                                <input style="display:none" class="editperfil" type="text"  id="desc" placeholder="Introduce una descripci&oacute;n">
                                <input style="display:none" type="image" id="savea" alt="image" class="tic" src="resources/images/save.png">
                                <p id="inter1">- Intereses</p>
                                <input style="display:none" class="editperfil" type="text"  id="inter" placeholder="Separados por comas">
                                <input style="display:none" type="image" id="savee" class="tic" alt="image" src="resources/images/save.png">
                               
                                    <p>- Cursos que est&aacute;s impartiendo</p>
                                <ul style="list-style-type:circle">
                                <%
                                int j = 0;
                                for (int x =0; x<bbdd.getCursos().size();x++){
                                    if (bbdd.getCursos().get(x).getIdprofesor().equals(usuario.getEmail())){
                                        Cursos pedro= bbdd.getCursos().get(x);
                                        j++;
                                %>
                                 <li style="font-style:italic; margin-left: 70px"><a href="mycourse.jsp"><%=pedro.getNombreCurso() %></a><p><%=pedro.getIdprofesor() %></p></li>
                                <%
                                    }
                                }
                                if(j==0){
                                    %>
                                    <li>no courses available</li>
                                    <%   
                                }
                               
                                %>
                                </ul>
                                <p>- Cursos en los que est&aacute;s matriculado</p>
                                <ul style="list-style-type:circle">
                                  <li style="font-style:italic; margin-left: 70px">Desarrollo de Aplicaciones iOS</li>
                                  <li style="font-style:italic; margin-left: 70px">La Soluci&oacute;n del Conflicto </li>
                                  <li style="font-style:italic; margin-left: 70px">Prioridades de la Alta Direcci&oacute;n</li>
                                </ul> 
                             
                                <p>- Logros</p>
                                <ul style="list-style-type:circle">
                                  <li style="font-style:italic; margin-left: 70px">logro 1</li>
                                  <li style="font-style:italic; margin-left: 70px">logro 2</li>
                                </ul> 
                                <p id="deseos">- Lista de deseos</p>
                                <% 
                                if (!usuario.getDeseos().isEmpty()){
                                for (int i = 0; i<usuario.getDeseos().size();i++){
                                %><p><%= usuario.getDeseos().get(i).getNombreCurso()%></p><%
                                	}		                             	
                                }
                                %>
                                </div>
                        </div>
           
                    </div>
            </div>
    </div>
 
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
</div>
<!--footer end here-->
</body>
</html>


