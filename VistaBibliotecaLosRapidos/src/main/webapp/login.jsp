<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<div class="contenedor form-login">
	<p class="titulo">Bienvenido</p>
	<form class="form">
		<input type="email" class="input" placeholder="Email"> 
		<input type="password" class="input" placeholder="Contraseña">
		<button class="form-btn">Acceder</button>
	</form>
	<button class="form-btn" onclick="cargarContenido('registro.jsp')">Registrarse</button>	
	<button class="form-btn negro" onclick="cargarContenido('cambiarContra.jsp')">Recuperar contraseña</button>
</div>

</body>
</html>