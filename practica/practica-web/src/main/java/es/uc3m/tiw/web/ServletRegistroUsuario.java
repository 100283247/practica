package es.uc3m.tiw.web;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class ServletRegistro
 */
@WebServlet("/ServletRegistro")
public class ServletRegistroUsuario extends HttpServlet {
    private static final long serialVersionUID = 1L;
    HttpSession sesion;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRegistroUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            System.out.println("no entro en el post");
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        Usuario user = new Alumno();
        UsuarioDAO userDao = new UsuarioDAO();
        sesion =request.getSession();
       
        String accion = (request.getParameter("accion")==null) ? "" : (String)request.getParameter("accion");
        
        String dioreccionPasado = request.getParameter("direccion");
        String telefonoPasado = request.getParameter("telefono");
        String emailPasado = request.getParameter("email");
        String passwordPasado = request.getParameter("password");
        String nombrePasado = request.getParameter("nombre_Usuario");
        String apellido1Pasado = request.getParameter("apellido1");
        String apellido2Pasado = request.getParameter("apellido2");
        
       
        if(accion.equals("registrar")){   
           
            user.setRol("Alumno");
            user.setDireccion(new String(request.getParameter("direccion")));
            user.setTelefono(request.getParameter("telefono"));
            user.setEmail(request.getParameter("email"));
            user.setPassword(request.getParameter("password"));
            user.setNombre(new String(request.getParameter("nombre_Usuario")));
            user.setApellido1(request.getParameter("apellido1"));
            user.setApellido2(request.getParameter("apellido2"));
           
            
            if (!user.ValidarNombreUsuario() ||
                     !user.validarApellido1() ||
                        !user.ValidarApellido2() ||
                        !user.validarTelefono()||
                        !user.validarEmail() ||
                        !user.validarContrasenia()||
                        !user.validarSegundaContrasenia(request.getParameter("password2"))){
               
            this.getServletConfig().getServletContext().getRequestDispatcher("/errorSingup.jsp").forward(request, response);
			            
            			
            } else {
            ServletContext context = request.getSession().getServletContext();
            context.setAttribute("Usuario", user);
            userDao.crearUsuario(user);
            this.getServletConfig().getServletContext().getRequestDispatcher("/perfilusuario.jsp").forward(request, response);
        }
        }
    }   

}