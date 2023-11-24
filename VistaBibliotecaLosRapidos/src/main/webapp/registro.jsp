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
		<input type="text" id="nombre" class="input" placeholder="Nombre" required>
		<input type="text" id="apellidos" class="input" placeholder="Apellidos" required>                    
		<input type="text" id="dni" class="input" placeholder="DNI" oninput="revisarDni()" required>
		<input type="text" id="tlf" class="input" placeholder="Telefono" required>                   
		<input type="email" id="email" class="input" placeholder="Email" required>                                       
		<input type="password" id="contraseña" class="input" placeholder="Contraseña" oninput="revisarContraseña()" required> 
		<input type="password" id="confContraseña" class="input" placeholder="Confirmar Contraseña" required oninput="revisarContraseña()" required>
		<button type="submit" onclick="guardarUsuario()" id="btnRegistro" class="form-btn">Registrarse</button>
		<div class="mensaje" id="mensajeContraseña"></div>  <div class="mensaje" id="mensajeDni"></div>
	</form>
</div>

</body>
</html>	