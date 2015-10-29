package es.uc3m.tiw.web;

import java.util.ArrayList;
import java.util.List;


public class CursoDAO {
	
	public void crearCurso(Cursos curso) {
		BaseDatos bbdd = BaseDatos.getInstance();
		if(curso!=null){
			bbdd.getCursos().add(curso);
			}		
	}
	
	
	
	public Cursos recuperarCursoid (String id) {
		BaseDatos bbdd = BaseDatos.getInstance();
		Cursos curse = new Cursos ();
		for (int i = 0; i<= bbdd.getCursos().size();i++){
			if (curse.getId().equals(id)){
				return curse;
			}
		}
		return null;
	}

	
	public void actualizarCurso(Cursos curso) {
		BaseDatos bbdd = BaseDatos.getInstance();
		
	}




	}



