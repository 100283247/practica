package es.uc3m.tiw.web;

import java.util.ArrayList;
import java.util.List;


public class UsuarioDAO{
	
	
	public void crearUsuario(Usuario usuario) {
		BaseDatos bbdd = BaseDatos.getInstance();
		if(usuario!=null){
		bbdd.getUsuarios().add(usuario);
		}
	}
	
	public Usuario recuperarUsuarioEmail(String email) {
		BaseDatos bbdd = BaseDatos.getInstance();
		Usuario user = new Alumno ();
		for (int i =0; i<=bbdd.getUsuarios().size();i++){
			if(user.getEmail().equals(email)){
				return user;					
			}
		}
			return null;
	}
	
	public Administrador recuperaAdministrador(String email){
		BaseDatos bbdd = BaseDatos.getInstance();
		Administrador admin = new Administrador ();
		for (int i = 0; i<=bbdd.getUsuarios().size(); i++){
			if(admin.getEmail().equals(email)){
				return admin;
			}
		}
		return null;
	}
	
	public void actualizarUsuario(Usuario usuario) {
		BaseDatos bbdd = BaseDatos.getInstance();
		
	}
		
}