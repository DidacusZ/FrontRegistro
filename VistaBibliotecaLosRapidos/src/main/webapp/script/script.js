
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

  
  function guardarUsuario() {
            var nombre = document.getElementById("nombre").value;
            var apellidos = document.getElementById("apellidos").value;
            var dni = document.getElementById("dni").value;
            var tlf = document.getElementById("tlf").value;
            var email = document.getElementById("email").value;
            var clave = document.getElementById("contraseña").value;
            

            var nuevoUsuario = {
                nombreUsuario: nombre,
                apellidosUsuario: apellidos,
                dniUsuario: dni,
                tlfUsuario: tlf,
                emailUsuario: email,
                claveUsuario: clave,
               
            };

            var apiUrl = "http://192.168.30.154:8080/usuarios";

            fetch(apiUrl, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(nuevoUsuario)
            })
            .then(response => {
                if (response.ok) {
                    return response.json();
                } else {
                    throw new Error('Error al guardar el usuario');
                }
            })
            .then(data => {
                console.log('Usuario guardado con éxito. ID: ' + data.idUsuario);
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }