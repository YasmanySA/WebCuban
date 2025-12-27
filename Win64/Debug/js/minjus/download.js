// Función que espera el formulario y obtiene el enlace "Abrir"

function Open_table() {
    const botonVista = document.querySelector('.pagedTable a.tableOption');

    if (!botonVista) {
        return Promise.resolve({
            // success: false,
            // link: null,
            // message: 'Botón Vista no encontrado'
        });
    }

    botonVista.click(); // hace click en Vista

}

// Open_table()
function getLink() {

            const botonAbrir = document.querySelector(
                'form[name="tracker_ViewAnyInputDocument1"] a.tableOption'
            );

            if (botonAbrir && botonAbrir.href) {

                // botonAbrir.click(); // hace click en Abrir
                return {
                    success: true,
                    link: botonAbrir.href,
                    state: 'Certificación descargada con exito',
                    styleClass: 'success'
                };
            }


}
// getLink()
// Función que hace click en "Vista" y llama a la función anterior



// // Ejecutar todo
// setTimeout(() => {
//     clickVista().then(resultado => {
//         console.log(JSON.stringify(resultado));
//     });
// }, 500);
//
//
// // Ejecutar todo
// setTimeout(() => {
//     clickVista().then(resultado => {
//
//         console.log(JSON.stringify(resultado));
//     });
// }, 500);