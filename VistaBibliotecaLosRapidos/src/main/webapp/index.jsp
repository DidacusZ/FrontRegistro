<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilos/menu.css">
<link rel="stylesheet" href="estilos/estilo.css">

<script src="script/script.js"></script>
<title>Inicio</title>
<!-- cambio -->
</head>
<body>
	<nav>	
		<div class="menu">
		<div class="logo"><a>Biblioteca</a></div>
			<ul class="nav-links">
				<li><a onclick="cargarContenido('login.jsp')" href="#" >Login</a></li>				
			</ul>
		</div>
	</nav>
	
	<div id="caja">
	<script>
        cargarContenido('login.jsp');
    </script>
	</div>  
    
</body>
</html>