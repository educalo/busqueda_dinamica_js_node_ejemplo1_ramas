document.addEventListener('DOMContentLoaded', () =>{
    mostrarAuto(autos);
    buscarAutos();
});

let resultado = document.getElementById("resultado"),
    search = document.getElementById("search");

fetch('http://localhost:3000/getall')
    .then(res => res.json())
    .then(autos => console.log(autos))
    .catch( err => console.error(err));

function mostrarAuto(autos){
    autos.forEach(auto => {
        const elements = document.createElement("P");
        elements.innerHTML = `Marca: <strong>${auto.marca}</strong> - Modelo: <strong>${auto.modelo}</strong> - Año: <strong>${auto.year}</strong> - Precio: <strong>${auto.precio}</strong> - Color: <strong>${auto.color}</strong>`;
        resultado.appendChild(elements);
    });  
}

function buscarAutos(){
    search.addEventListener("input", e=>{
        limpiarHTML();
        const inputText = e.target.value.toUpperCase().trim();
        
        const mostrarFiltrado = autos.filter(auto => 
            auto.marca.toUpperCase().startsWith(inputText) || 
            auto.modelo.toUpperCase().startsWith(inputText) ||
            auto.year.toString().startsWith(inputText) ||
            auto.precio.toString().startsWith(inputText) ||
            auto.color.toUpperCase().startsWith(inputText) 
        );

        if (mostrarFiltrado.length === 0) {
            noResultado();
        }
        
        mostrarAuto(mostrarFiltrado);
    });
}

function limpiarHTML(){
    while (resultado.firstChild){
        resultado.removeChild(resultado.firstChild);
    }
}

function noResultado(){
    const noResultadoElement = document.createElement("DIV");
    noResultadoElement.textContent = "No hay resultados de búsqueda";
    resultado.appendChild(noResultadoElement);    
}
