<?php
// Guardar los datos recibidos en variables:
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$telefono = $_POST['telefono'];
$direccion = $_POST['direccion'];
$pedido = $_POST['pedido'];
// Definir el correo de destino:
$dest = "federico@ceophp.net"; 
 
// Estas son cabeceras que se usan para evitar que el correo llegue a SPAM:
$headers = "From: $nombre $email\r\n";
$headers .= "X-Mailer: PHP5\n";
$headers .= 'MIME-Version: 1.0' . "\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
 
// Aqui definimos el asunto y armamos el cuerpo del mensaje
$asunto = "Contacto";
$cuerpo = "<strong>Nombre:</strong> ".$nombre."<br>";
$cuerpo .= "<strong>Email:</strong> ".$email."<br>";
$cuerpo .= "<strong>Telefono:</strong> ".$telefono."<br>";
$cuerpo .= "<strong>Direccion:</strong> ".$direccion."<br>";
$cuerpo .= "<strong>Pedido:</strong> ".$pedido;
 
// Esta es una pequena validación, que solo envie el correo si todas las variables tiene algo de contenido:
if($nombre != '' && $email != '' && $telefono != ''){
    mail($dest,$asunto,$cuerpo,$headers); //ENVIAR!
}
?>