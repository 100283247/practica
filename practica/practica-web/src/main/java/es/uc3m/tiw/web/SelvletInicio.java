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
@WebServlet("/SelvletInicio")
public class SelvletInicio extends HttpServlet {
    private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelvletInicio() {
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
        // TODO Auto-generated method stub
        ServletContext context = request.getSession().getServletContext();
       
            String accion = (request.getParameter("accion")==null) ? "" : (String)request.getParameter("accion");
   
            if(accion.equals("singout")){   

                context.removeAttribute("Usuario");
               
                this.getServletConfig().getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
       
            }

    }
}
