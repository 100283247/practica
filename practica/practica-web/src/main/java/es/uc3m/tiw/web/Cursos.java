package es.uc3m.tiw.web;

public class Cursos {

	//atributos
	private String id;
	private String temario;
	private String profesor;
	private String certificado;
	private String secciones;
	private String lecciones;
	private String material;
	private String notificaciones;
	private String calificaciones;
	private String destacado;
	private String validad;
	private String tipoOferta;
	private String nombreCurso;
	private String descripcion;
	private String dificultad;
	private String horasDedicacion;
	private String precio;
	private String imagen;
	private String categoria;
	
	
	
	
	//constructor
	public Cursos (){
	}

	
	//getters & setters
	public String getNombreCurso() {
		return nombreCurso;
	}

	public void setNombreCurso(String nombreCurso) {
		this.nombreCurso = nombreCurso;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getDificultad() {
		return dificultad;
	}

	public void setDificultad(String dificultad) {
		this.dificultad = dificultad;
	}

	public String getHorasDedicacion() {
		return horasDedicacion;
	}

	public void setHorasDedicacion(String horasDedicacion) {
		this.horasDedicacion = horasDedicacion;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	public String getCategoria(){
		return categoria;
	}
	public void setCategoria (String categoria){
		this.categoria = categoria;
	}
	
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getTemario() {
		return temario;
	}


	public void setTemario(String temario) {
		this.temario = temario;
	}


	public String getProfesor() {
		return profesor;
	}


	public void setProfesor(String profesor) {
		this.profesor = profesor;
	}


	public String getCertificado() {
		return certificado;
	}


	public void setCertificado(String certificado) {
		this.certificado = certificado;
	}


	public String getSecciones() {
		return secciones;
	}


	public void setSecciones(String secciones) {
		this.secciones = secciones;
	}


	public String getLecciones() {
		return lecciones;
	}


	public void setLecciones(String lecciones) {
		this.lecciones = lecciones;
	}


	public String getMaterial() {
		return material;
	}


	public void setMaterial(String material) {
		this.material = material;
	}


	public String getNotificaciones() {
		return notificaciones;
	}


	public void setNotificaciones(String notificaciones) {
		this.notificaciones = notificaciones;
	}


	public String getCalificaciones() {
		return calificaciones;
	}


	public void setCalificaciones(String calificaciones) {
		this.calificaciones = calificaciones;
	}


	public String getDestacado() {
		return destacado;
	}


	public void setDestacado(String destacado) {
		this.destacado = destacado;
	}


	public String getValidad() {
		return validad;
	}


	public void setValidad(String validad) {
		this.validad = validad;
	}


	public String getTipoOferta() {
		return tipoOferta;
	}


	public void setTipoOferta(String tipoOferta) {
		this.tipoOferta = tipoOferta;
	}


	protected boolean validarNombreCurso (){
		// matches("^.*\\d.*$"), comprobamos que el nombre no contiene digitos.
		if(nombreCurso.length()!=0 && !nombreCurso.matches("^.*\\d.*$")
				&& nombreCurso!=null){
			nombreCurso="";
			return true;
		}
			nombreCurso = "";
			return false;
	}
	
	protected boolean validarPrecioCurso (){
		if(precio.length()!=0&& Double.parseDouble(precio)>0 
			//matches("[0.0-9.0]*"), comprobamos que el precio esta compuesto por los dígitos entre 0-9
		   &&precio!=null && precio.matches("[0.0-9.0]*")){
			return true;
		}
			precio = "";
			return false;
	}
	
	protected boolean validarImagen (){
		//comprobamos la extensión de la imagen que introduzca.
		if(imagen.matches("[^\\s]+(\\.(?i)(jpg))$)")){
			return true;
		}
			imagen = "";
			return false;
		
	}
	
	protected boolean validarHorasDedicacion (){
		//comprobamos que las horas de dedicación que ha introducido son correctas.
		if(horasDedicacion.length()!=0&& Double.parseDouble(horasDedicacion)>0 
			//matches("[0.0-9.0]*"), comprobamos que el precio esta compuesto por los dígitos entre 0-9
		   &&horasDedicacion!=null && horasDedicacion.matches("[0.0-9.0]*")){
			return true;
		}
			horasDedicacion = "";
			return false;
	}

	
	
	
	
	
	
	
	
}
