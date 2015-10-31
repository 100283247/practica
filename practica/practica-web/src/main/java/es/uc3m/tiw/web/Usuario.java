package es.uc3m.tiw.web;

public abstract class Usuario {

	//Definimos los atributos que va a tener un usuario.
	private String nombre; 
	private String Apellido1;
	private String Apellido2; 
	private String telefono;
	private String email;
	//en el string password, hemos guardado la función resumen de la contraseña. 
	private String password;
	//tipo de usuario, en el sistema (Alumno, Profesor o Administrador)
	private String rol;
	private String direccion;
	
	
	//Constructor.
	public Usuario (){
		}

	

	//métodos getters y setters.
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido1() {
		return Apellido1;
	}

	public void setApellido1(String apellido1) {
		Apellido1 = apellido1;
	}

	public String getApellido2() {
		return Apellido2;
	}

	public void setApellido2(String apellido2) {
		Apellido2 = apellido2;
	}

	public String getTelefono() {
		return telefono;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getRol() {
		return rol;
	}


	public void setRol(String rol) {
		this.rol = rol;
	}
	
	
	public String getDireccion() {
		return direccion;
	}



	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}



	//comparamos que el nombre es válido mediante la codificación ASCII
	protected boolean ValidarNombreUsuario (){
		if(nombre.length()==0){
			return false;
		}
		int contador= 0;
		for(int i =0; i<nombre.length();i++){
			if((int)nombre.charAt(i)>=48 && (int)nombre.charAt(i)<=57){
				contador ++;
			}
		}
			if (contador==0)
			return true;
			nombre="";
			return false;
	}
	
	//validamos los apellidos de la misma manera que hemos validado el nombre del usario. 
	protected boolean validarApellido1 (){
		if(Apellido1.length()==0){
			return false;
		}
		int contador= 0;
		for(int i =0; i<Apellido1.length();i++){
			if((int)Apellido1.charAt(i)>=48 && (int)Apellido1.charAt(i)<=57){
				contador ++;
			}
		}
			if (contador==0)
			return true;
			Apellido1 ="";
			return false;
	}
	
	protected boolean ValidarApellido2 (){
		if(Apellido2.length()==0){
			return false;
		}
		int contador= 0;
		for(int i =0; i<Apellido2.length();i++){
			if((int)Apellido2.charAt(i)>=48 && (int)Apellido2.charAt(i)<=57){
				contador ++;
			}
		}
			if (contador==0)
			return true;
			Apellido2 ="";
			return false;
	}
	
	//comparamos que el email es valido, si contiene más de 4 caracteres, una @ o un punto. 
	protected boolean validarEmail(){
		if(email.length()>4&&email.contains("@")&&email.contains("."))
			return true;
			email = "";
			return false;
	}
	
	//comparamos que el teléfono es válido mediante la codificación ASCII
	protected boolean validarTelefono(){
		int contador=0;
		if(telefono.length()==0)
			return true;
		if(telefono.length()==9){
			if(telefono.charAt(0)!=57&&telefono.charAt(0)!=54){
				telefono = "";
				return false;
			}
			contador=+1;
			for (int i =1; i<telefono.length();i++){
				if(telefono.charAt(i)>=48 && telefono.charAt(i)<=57){
					contador ++;
				}
			}
			if(contador==telefono.length())
				return true;
		}
			telefono ="";
			return false;
	}
	
	protected boolean validarContrasenia() {
		int nums = 0;
		int charMin = 0;
		int charMay = 0;
		int simb = 0;
		for (int i = 0; i < password.length(); i++) {
			if (simb > 1) {
				password = "";
				return false;
			}
			if (password.charAt(i) >= 48 && password.charAt(i) <= 57 && nums < 1) {
				nums++;
			}
			if (password.charAt(i) >= 65 && password.charAt(i) <= 90 && charMin < 1) {
				charMin++;
			}
			if (password.charAt(i) >= 97 && password.charAt(i) <= 122 && charMay < 1) {
				charMay++;
			}
			if (password.charAt(i) == '.' || password.charAt(i) == ':'
					|| password.charAt(i) == '-') {
				simb++;
			}
		}
		if (nums == 1 && charMin >= 1 && charMay == 1 && simb == 1
				&& password.length() >= 8 && password.length() <= 16) {
			return true;
		}
		password = "";
		return false;
	}
	
	protected boolean validarSegundaContrasenia(String password2) {
		if (password.equals(password2))
			return true;
		password = "";
		return false;
	}
	
}