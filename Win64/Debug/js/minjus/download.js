// Función que espera el formulario y obtiene el enlace "Abrir"


function obtenerAbrir() {
    return new Promise((resolve) => {
        const intervalo = setInterval(() => {
            const botonAbrir = document.querySelector(
                'form[name="tracker_ViewAnyInputDocument1"] a.tableOption'
            );

            if (botonAbrir && botonAbrir.href) {
                clearInterval(intervalo);
                botonAbrir.click(); // hace click en Abrir
                resolve({
                    success: true,
                    link: botonAbrir.href,
                    message: 'Enlace obtenido correctamente'
                });
            }
        }, 300);
    });
}

// Función que hace click en "Vista" y llama a la función anterior
function clickVista() {
    const botonVista = document.querySelector('.pagedTable a.tableOption');

    if (!botonVista) {
        return Promise.resolve({
            // success: false,
            // link: null,
            // message: 'Botón Vista no encontrado'
        });
    }

    botonVista.click(); // hace click en Vista
    return obtenerAbrir(); // retorna la Promise de Abrir
}

// Ejecutar todo
setTimeout(() => {
    clickVista().then(resultado => {
        console.log(JSON.stringify(resultado));
    });
}, 500);
