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
 * Servlet implementation class ServletLoginUsuario
 */
@WebServlet("/ServletLoginUsuario")
public class ServletLoginUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Usuario persona = new Alumno();
	HttpSession sesion;
	BaseDatos bbdd = BaseDatos.getInstance();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLoginUsuario() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int i =0;
		String accion = (request.getParameter("accion")==null) ? "" : (String)request.getParameter("accion");
		if (accion.equals("logear")){
		if (request.getParameter("usuario") != null
				&& request.getParameter("password") != null) {
				String usuario = request.getParameter("usuario");
				String password = request.getParameter("password");
				
				Iterator<Usuario> iterador = bbdd.getUsuarios().iterator();
				while (iterador.hasNext()) {
					persona = iterador.next();
					if (persona.getEmail().equals(usuario) && persona.getPassword().equals(password)) {
						sesion = request.getSession();
						sesion.setAttribute("Usuario", persona);
					i++;
					}
				}
				if(i!=0){
					this.getServletConfig().getServletContext()
					.getRequestDispatcher("/perfilusuario.jsp").forward(request, response);	
				}else{
				this.getServletConfig().getServletContext()
				.getRequestDispatcher("/login.jsp").forward(request, response);
				}
			}
		}
	}
}

