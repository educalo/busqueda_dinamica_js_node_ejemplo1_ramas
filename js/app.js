document.addEventListener('DOMContentLoaded', () => {
    obtenerDatos(autos);
});

let autos = []; // Definir autos como una variable global para que esté disponible en toda la aplicación

function obtenerDatos() {
    fetch('http://localhost:3000/getall')
        .then(response => {
            if (!response.ok) {
                throw new Error('Error en la solicitud HTTP');
            }
            return response.json();
        })
        .then(data => {
            autos = data; // Almacenar los datos en la variable global autos
            mostrarAuto(autos);
            buscarAutos(autos);
        })
        .catch(error => {
            console.error('Hubo un problema con la solicitud fetch:', error);
        });
}

//recorrido de todos los datos devueltos por el array
//meterlo en una tabla??????????????
function mostrarAuto(autos) {
    limpiarHTML();
    let tablaHTML='';
    const tablaBody =document.getElementById("tabla-de-datos-body")
    
    //1º Método con forEach
    /*autos.forEach(auto => {
        tablaHTML += `<tr>
            <td>${auto.id}</td>
            <td>${auto.marca}</td>
            <td>${auto.modelo}</td>
            <td>${auto.ano}</td>
            <td>${auto.precio}</td>
            <td>${auto.color}</td>
        </tr>`;
          
    });
    */
    //2º Metodo con map
    //join para añadirlo todo en una cadena lo que devuelve el map
    tablaHTML = autos.map(auto => {
        return `<tr>
                    <td>${auto.id}</td>
                    <td>${auto.marca}</td>
                    <td>${auto.modelo}</td>
                    <td>${auto.ano}</td>
                    <td>${auto.precio}</td>
                    <td>${auto.color}</td>
                </tr>`;
    }).join('');

    tablaBody.innerHTML = tablaHTML;
}

function buscarAutos(autos) {
    search.addEventListener("input", e => {
        limpiarHTML();
        const inputText = e.target.value.toUpperCase().trim();

        const mostrarFiltrado = autos.filter(auto =>
            auto.marca.toUpperCase().startsWith(inputText) ||
            auto.modelo.toUpperCase().startsWith(inputText) ||
            auto.ano.toString().startsWith(inputText) ||
            auto.precio.toString().startsWith(inputText) ||
            auto.color.toUpperCase().startsWith(inputText)
        );

        if (mostrarFiltrado.length === 0) {
            noResultado();
        }

        mostrarAuto(mostrarFiltrado);
    });
}

function limpiarHTML() {
    while (resultado.firstChild) {
        resultado.removeChild(resultado.firstChild);
    }
}

function noResultado() {
    const noResultadoElement = document.createElement("DIV");
    noResultadoElement.textContent = "No hay resultados de búsqueda";
    resultado.appendChild(noResultadoElement);
}