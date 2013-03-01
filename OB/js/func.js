
$(document).ready(inicializo2);

	

function inicializo2(){
		//Según como este formulario cuando presionan contacto oculta o muesta formulario								
		
		$(".boton_envio").click(function() {
		
		var nombre = $(".nombre").val();
			email = $(".email").val();
			validacion_email = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
			telefono = $(".telefono").val();
			direccion = $(".direccion").val();
			pedido = $("#pedido").val();
		
		if (nombre == "") {
		    $(".nombre").focus();
		    return false;
		}else if(email == "" || !validacion_email.test(email)){
		    $(".email").focus();	
		    return false;
		}else if(telefono == ""){
		    $(".telefono").focus();
		    return false;
		}else if(direccion == ""){
		    $(".direccion").focus();
		    return false;
		}else{
			$('.ajaxgif').removeClass('hide');
			var datos = 'nombre='+ nombre + 
						'&email=' + email + 
						'&telefono=' + telefono +						
						'&direccion=' + direccion +						
						'&pedido=' + pedido;
			$.ajax({
	    		type: "POST",
	    		url: "proceso.php",
	    		data: datos,
	    		success: function() {
					$('.ajaxgif').hide();
					$('.cancelar').text('OK');
	      			$('.msg').text('Su garrafa sera enviada en 1hr! ').addClass('msg_ok');
					limpiar();
	    		},
				error: function() {
					$('.ajaxgif').hide();
	      			$('.msg').text(' error!').addClass('msg_error').animate({ 'left' : '100px' }, -300);					

				}
	   		});
	 		return false;	
		}
	})
		}
function limpiar(){
	$(".nombre").val("")
	$(".email").val("")
	$(".direccion").val("")
	$(".telefono").val("")
}