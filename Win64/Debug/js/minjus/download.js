// Función que espera el formulario y obtiene el enlace "Abrir"

function Open_table() {
    const btView = document.querySelector('.pagedTable a.tableOption');

    if (btView) {
        btView.click();
        return {
            action: "download",
            state: "Descargando Certificación",
            StyleClass: "Success"
        };
         // hace click en Vista
    } else {


return {status: false};    }



}

// Open_table()
function getLink() {

            const botonAbrir = document.querySelector(
                'form[name="tracker_ViewAnyInputDocument1"] a.tableOption'
            );

            if (botonAbrir && botonAbrir.href) {

                // botonAbrir.click(); // hace click en Abrir
                return {
                    action: "end",
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