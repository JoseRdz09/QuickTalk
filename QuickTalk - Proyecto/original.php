<?php
$to = "jose.rodriguez.isw@unipolidgo.edu.mx";
$subject = "Correo de prueba";
$message = "Este es un correo de prueba enviado desde PHP.";

$headers = "From: remitente@example.com\r\n";

mail($to, $subject, $message, $headers);
?>