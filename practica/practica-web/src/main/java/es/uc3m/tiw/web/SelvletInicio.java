package es.uc3m.tiw.web;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelvletInicio
 */
@WebServlet(value="/SelvletInicio",loadOnStartup=1)
public class SelvletInicio extends HttpServlet {
    private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelvletInicio() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init (){
    	 CursoDAO cursoDao = new CursoDAO();
    	    UsuarioDAO usuarioDao = new UsuarioDAO();
    	   
    	    Cursos curso1 = new Cursos();
    	    curso1.setNombreCurso("Informatica");
    	    curso1.setId("12345");
    	    curso1.setDescripcion("Es un curso cojonudo");
    	    curso1.setIdprofesor("e.garciacentenera@gmail.es");
    	    curso1.setProfesor("Eduardo Garcia");
    	    cursoDao.crearCurso(curso1);
    	    Cursos curso2 = new Cursos();
    	    curso2.setNombreCurso("Matematica Discreta");
    	    curso2.setId("22222");
    	    curso2.setDescripcion("Es un curso cojonudo");
    	    curso2.setIdprofesor("e.garciacentenera@gmail.es");
    	    curso2.setProfesor("Eduardo Garcia");
    	    cursoDao.crearCurso(curso2);
    	    Cursos curso3 = new Cursos();
    	    curso3.setNombreCurso("Historia del Arte");
    	    curso3.setId("33333");
    	    curso3.setDescripcion("Es un curso cojonudo");
    	    curso3.setIdprofesor("e.garciacentenera@gmail.es");
    	    curso3.setProfesor("Eduardo Garcia");
    	    cursoDao.crearCurso(curso3);
    	    Cursos curso4 = new Cursos();
    	    curso4.setNombreCurso("Tiw");
    	    curso4.setId("44444");
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
    	   
    	    Usuario admin = new Alumno ();
    	    admin.setNombre("Admin");
    	    admin.setApellido1("Admin");
    	    admin.setApellido2("Admin");
    	    admin.setEmail("administrador@administrador.com");
    	    admin.setPassword("Admin1-admin");
    	    usuarioDao.crearUsuario(admin);
    }
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        ServletContext context = request.getSession().getServletContext();
       
            String accion = (request.getParameter("accion")==null) ? "" : (String)request.getParameter("accion");
   
            if(accion.equals("singout")){   

                context.removeAttribute("Usuario");
               
                this.getServletConfig().getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
       
            }

    }
}
