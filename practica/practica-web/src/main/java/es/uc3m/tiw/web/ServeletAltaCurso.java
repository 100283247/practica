package es.uc3m.tiw.web;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServeletAltaCurso
 */
@WebServlet("/ServeletAltaCurso")
public class ServeletAltaCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Cursos curso = null;
	HttpSession sesion;
	BaseDatos bbdd = BaseDatos.getInstance();
	Usuario persona = null;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletAltaCurso() {
        super();
        // TODO Auto-generated constructor stub
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
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Usuario persona = (Usuario) request.getSession().getAttribute("Usuario");
	//	if (persona == null) {
	//	this.getServletConfig().getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		
	//	}else{
		
		String usuario = request.getParameter("usuario");
		Cursos curso = new Cursos();
		CursoDAO cursoDao = new CursoDAO();
		
		String accion = (request.getParameter("accion")==null) ? "" : (String)request.getParameter("accion");

		curso.setId(crearId());
		curso.setNombreCurso(request.getParameter("nombreCurso"));
		curso.setDescripcion(request.getParameter("descripcion"));
		curso.setDificultad(request.getParameter("nivel"));
		curso.setImagen(request.getParameter("imagenCurso"));
		curso.setHorasDedicacion(request.getParameter("duracion"));
		curso.setPrecio(request.getParameter("precio"));
		curso.setValidad("NO");
		curso.setIdprofesor(persona.getEmail());
		curso.setProfesor(persona.getNombre()+" "+persona.getApellido1()+" "+persona.getApellido2());
		
		
		if (!curso.validarHorasDedicacion() ||
				!curso.validarNombreCurso() ||
				!curso.validarPrecioCurso()) {			
			this.getServletConfig().getServletContext().getRequestDispatcher("/altacurso.jsp").forward(request, response);
		}
		
			
		
		sesion = request.getSession();
		sesion.setAttribute("curso", curso);
		//System.out.println(persona.getEmail());

		if(accion.equals("altacurso")){			
			System.out.println("entra if");
			cursoDao.crearCurso(curso);
			this.getServletConfig().getServletContext().getRequestDispatcher("/perfilusuario.jsp").forward(request, response);
		}else{
			this.getServletConfig().getServletContext().getRequestDispatcher("/altacurso.jsp").forward(request, response);		
		}
		}
	//}

	public
	String crearId() {
		// TODO Auto-generated method stub
		String numAleatorio= String.valueOf((int)Math.floor(Math.random()*99999+1));
		
		return numAleatorio;
		}
}


