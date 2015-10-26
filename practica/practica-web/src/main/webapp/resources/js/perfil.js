
$(document).ready(function(){
	
	/* Funcion para abrir el editor de perfil */
	 $("#edit").click(function(){
		$(this).hide();
		$(".editperfil").show();	
		$(".tic").show();

	 });
	  $("#saveprofile").click(function(){
		$("#edit").show();
		$(".editperfil").hide();	
		$(".tic").hide();
	 });
	 
	 
	 /* Funcion para editar el perfil perfil */
	 $("#saven").click(function(){
			var nombre = $("#nombre").val();
			if(nombre=="" || nombre==null ){
			alert("Introduce un nuevo nombre");
		}else{
			$("#name").text("- Nombre: " + $("#nombre").val());
		}
	});
	 
	 $("#savea").click(function(){
	 	var desc = $("#desc").val();
		if(desc=="" || desc==null ){
			alert("Introduce una descripción");
		}else{
		$("#desc1").text("- Descripción: " + $("#desc").val());
		}	
	});
	 
	 $("#savee").click(function(){
	 	var inter = $("#inter").val();
		if(inter=="" || inter==null ){
			alert("Introduce tus intereses");
		}else{
		$("#inter1").text("- Intereses: " + $("#inter").val());
		}
	});
	
	$("#save1").click(function(){
	 	var deseo = $("#deseo").val();
		var deseo2 = $("#deseo2").val();
		var deseo3 = $("#deseo3").val();
		var deseo4 = $("#deseo4").val();
		var deseo5 = $("#deseo5").val();
		var deseo6 = $("#deseo6").val();
		var deseo7 = $("#deseo7").val();
		var deseo8 = $("#deseo8").val();
		var deseo9 = $("#deseo9").val();
		var deseo10 = $("#deseo10").val();
		if(deseo=="" || deseo==null || deseo2=="" || deseo2==null || deseo3=="" || deseo3==null || deseo4=="" || deseo4==null || deseo5=="" || deseo5==null || deseo6=="" || deseo6==null || deseo7=="" || deseo7==null || deseo8=="" || deseo8==null || deseo9=="" || deseo9==null || deseo10=="" || deseo10==null){
			alert("Rellena todos los campos de deseos");
		}else{
		$("#deseos").text("- Lista de deseos: " + $("#deseo").val() + ", " + $("#deseo2").val() + ", " + $("#deseo3").val() + ", " + $("#deseo4").val() + ", " + $("#deseo5").val() + ", " + $("#deseo6").val() + ", " + $("#deseo7").val() + ", "  + $("#deseo8").val() + ", " + $("#deseo9").val() + " y " + $("#deseo10").val());
		}
	});
	
	/*Funcion para subir la imagen*/
	function archivo(evt) {
                  var files = evt.target.files; // FileList object
             
                  // Obtenemos la imagen del campo "file".
                  for (var i = 0, f; f = files[i]; i++) {
                    //Solo admitimos imágenes.
                    if (!f.type.match('image.*')) {
                        continue;
                    }
             
                    var reader = new FileReader();
             
                    reader.onload = (function(theFile) {
                        return function(e) {
                          // Insertamos la imagen
						 $("#primerafot").hide();
                         document.getElementById("list").innerHTML = ['<img class="thumb" src="', e.target.result,'" title="', escape(theFile.name), '"/>'].join('');
                        };
                    })(f);
             
                    reader.readAsDataURL(f);
                  }
              }
             
              document.getElementById('files').addEventListener('change', archivo, false);
	 
	
});

