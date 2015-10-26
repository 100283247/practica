package es.uc3m.tiw.web;

import java.util.ArrayList;
import java.util.List;

public class BaseDatos {
	
    private static BaseDatos INSTANCE = null;
	
	public  List<Usuario> usuarios = new ArrayList<>();
	
	public  List<Cursos> cursos = new ArrayList<>();
	

	
	
    // Private constructor suppresses 
    private BaseDatos(){

		if (usuarios!=null){
			Administrador admin = new Administrador();	
			admin.setNombre("Admin");
			admin.setApellido1("apellido1");
			admin.setApellido2("apellido2");
			admin.setPassword("password");
			admin.setRol("Administrador");
			admin.setTelefono("669105198");
			admin.setEmail("administrador@administrador.com");
			admin.setDireccion("calle falsa");		
			
		}
		if (cursos!=null){
			Cursos curso = new Cursos ();
			CursoDAO cursoDAO = new CursoDAO ();
			curso.setId("0");
			curso.setNombreCurso("Historia del arte");
			curso.setCategoria("Arte");
			curso.setDificultad("media");
			curso.setLecciones("1.- Historia del arte");
			curso.setCalificaciones("suspenso");
			curso.setImagen("imagen");
			curso.setCertificado("si");
			curso.setDescripcion("apropiado para gente que le guste el arte");
			curso.setHorasDedicacion("66");
			curso.setProfesor("Eduardo Garcia Centenera");
			curso.setPrecio("1000");
			curso.setDescripcion("descripcion");
			curso.setDestacado("destacado");
			curso.setLecciones("lecciones");
			curso.setNotificaciones("notificaciones");
			curso.setMaterial("material");
			curso.setSecciones("secciones");
			curso.setTemario("temario");
			curso.setTipoOferta("tipoOferta");
			curso.setValidad("validad");
		}
    }
		
    
	// creador sincronizado para protegerse de posibles problemas  multi-hilo
    // otra prueba para evitar instanciación múltiple 
    private synchronized static void createInstance() {
        if (INSTANCE == null) { 
            INSTANCE = new BaseDatos();
        }
    }

    public static BaseDatos getInstance() {
        if (INSTANCE == null) createInstance();
        return INSTANCE;
    }


	public List<Usuario> getUsuarios() {
		return usuarios;
	}


	public List<Cursos> getCursos() {
		return cursos;
	}


}
