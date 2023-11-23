<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nuevo Registro</title>
</head>
<body>

<div class="contenedor form-registro">
	<p class="titulo">Nuevo Usuario</p>
	<form class="form" id="usuarioForm">
		<input type="text" id="nombre" class="input" placeholder="Nombre ">
		<input type="text" id="apellidos" class="input" placeholder="Apellidos" >                    
		<input type="text" id="dni" class="input" placeholder="DNI" >                    
		<input type="text" id="tlf" class="input" placeholder="Telefono" >                   
		<input type="text" id="email" class="input" placeholder="Email" >                                       
		<input type="password" id="contraseña" class="input" placeholder="Contraseña" required oninput="revisarContraseña()"> 
		<input type="password" id="confContraseña" class="input" placeholder="Confirmar Contraseña" required oninput="revisarContraseña()">
		<button type="submit" onclick="guardarUsuario()" class="form-btn">Registrarse</button>
		<div id="mensajeContraseña"></div>       
	</form>	    
</div>

</body>
</html>