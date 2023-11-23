
function cargarContenido(url) {
	console.log("funciona");	
    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                var contenedor = document.getElementById('caja');
                var nuevoContenido = xhr.responseText;

                // Obtener el título del nuevo contenido
                var tempDiv = document.createElement('div');
                tempDiv.innerHTML = nuevoContenido;
                var nuevoTitulo = tempDiv.querySelector('title').innerText;

                // Actualizar el contenido y el título
                contenedor.innerHTML = nuevoContenido;
                document.title = nuevoTitulo;
            } else {
                console.error('Hubo un problema al cargar el contenido');
            }
        }
    };

    xhr.open('GET', url, true);
    xhr.send();
}

function revisarContraseña() {
    var contraseña = document.getElementById('contraseña').value;
    var confContraseña = document.getElementById('confContraseña').value;
    var mensajeContraseña = document.getElementById('mensajeContraseña');

    if (contraseña === confContraseña) {
      mensajeContraseña.textContent = 'Las contraseñas coinciden.';
      mensajeContraseña.style.color = 'green';
    } else {
      mensajeContraseña.textContent = 'Las contraseñas no coinciden.';
      mensajeContraseña.style.color = 'red';
    }
  }
