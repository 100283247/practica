package es.uc3m.tiw.web;

public class Cursos {

    //atributos
    private String id;
    private String temario;
    private String profesor;
    private String idprofesor;
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

   

    public String getIdprofesor() {
        return idprofesor;
    }


    public void setIdprofesor(String idprofesor) {
        this.idprofesor = idprofesor;
    }


    protected boolean ValidarNombreCurso (){
        if(nombreCurso.length()==0){
            return false;
        }
        int contador= 0;
        for(int i =0; i<nombreCurso.length();i++){
            if((int)nombreCurso.charAt(i)>=97 && (int)nombreCurso.charAt(i)<=122){
                contador ++;
            }
        }
            if (contador!=0)
            return true;
            nombreCurso="";
            return false;
    }
   
    protected boolean ValidarHorasTrabajo(){
        if(horasDedicacion.length()==0){
            return false;
        }
        int contador= 0;
        for(int i =0; i<horasDedicacion.length();i++){
            if((int)horasDedicacion.charAt(i)>=48 && (int)horasDedicacion.charAt(i)<=57){
                contador ++;
            }
        }
            if (contador!=0)
            return true;
            horasDedicacion="";
            return false;
    }
   
    protected boolean ValidarPVP(){
        if(precio.length()==0){
            return false;
        }
        int contador= 0;
        for(int i =0; i<precio.length();i++){
            if((int)precio.charAt(i)>=48 && (int)precio.charAt(i)<=57){
                contador ++;
            }
        }
            if (contador!=0)
            return true;
            precio="";
            return false;
    	}   
	}	


