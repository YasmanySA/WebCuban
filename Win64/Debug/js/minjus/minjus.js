var url_login =
    "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/login";
var url_tracker =
    "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/";
var tracker_DynaDocs = "tracker_DynaDocs";
var INPUT_DOCUMENT =
    "tracker_Show?CTO_UID_OBJ=7745944765ce5972287f1f0082113289&CTO_TYPE_OBJ=INPUT_DOCUMENT";
var DYNAFORM =
    "tracker_Show?CTO_UID_OBJ=2473970175d10d8284601e4012429159&CTO_TYPE_OBJ=DYNAFORM";
var url_tracker_DynaDocs = "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/tracker_DynaDocs"

// Función que espera el formulario y obtiene el enlace "Abrir"


// Ejecutar todo
// setTimeout(() => {
//     clickVista().then(resultado => {
//         console.log(JSON.stringify(resultado));
//     });
// }, 500);






function getInfo() {
    var page_dynaform = window.location.href.includes(
        DYNAFORM
    );
    var isLoginPage = window.location.href.includes(
        url_login
    );

    if (page_dynaform) {
        var state = document.querySelector('#solicitud_estado_denominacion .label-text')?.textContent.trim();
        var details = document.querySelector('#form\\[state-details\\]')?.value;
        var type_cert = document.querySelector('#form\\[solicitud_tipo_label\\]')?.value;
        // var name_register = document.querySelector('#form\\[solicitud_registro_civil_label\\]')?.value;


        return {state: state, details: details, type_cert: type_cert, StyleClass: "Info"};


    }





    // Si estamos en la página de login
    if (isLoginPage) {
        var error = document.getElementById("temporalMessageERROR");
        // Si existe el div de error
        if (error) {
            var text = error.innerText.trim();

            if (text === "ERROR: El caso no existe") {
                return {
                    state: "Por favor, el caso no existe. Revise de nuevo.",
                    StyleClass: "Danger",
                };
            }

            if (text === "ERROR: El PIN es inválido") {
                return {
                    state: "El PIN es incorrecto. Revise bien.",
                    StyleClass: "Danger",
                };
            }

            // Si hay error pero no coincide con los mensajes anteriores
            return {state: "OK", StyleClass: "Warning"};
        } else {
            // Si no hay error visible
            return {
                state: "Todavía no se han enviado datos al formulario",
                StyleClass: "Info",
            };
        }
    } else {
        // Si no estamos en la página de login
        // return {state: "Entrando al sistema", StyleClass: "Success"};
    }




}

function Postdata(cases, pin) {
    const caseInput = document.getElementById("form[CASE]");
    const pinInput = document.getElementById("form[PIN]");
    const submitButton = document.getElementById("form[BSUBMIT]");

    // Verificar que los elementos existen antes de usarlos
    // if (!caseInput || !pinInput || !submitButton) {
    //     console.error(
    //         "❌ Error: No se encontraron uno o más elementos del formulario."
    //     );
    //     // return { state: "Enviando datos ", StyleClass: "Primary" };
    // }


    caseInput.value = cases;
    pinInput.value = pin;


    submitButton.click();
    // return { code_status: "1" };



}


function getError() {
    const isLoginPage = window.location.href.includes(
        url_login
    );
    var error = document.getElementById("temporalMessageERROR");

    // Si estamos en la página de login
    if (isLoginPage) {
        // Si existe el div de error
        if (error) {
            var text = error.innerText.trim();

            if (text === "ERROR: El caso no existe") {
                return {
                    state: "Por favor, el caso no existe. Revise de nuevo.",
                    StyleClass: "Danger",
                };
            }

            if (text === "ERROR: El PIN es inválido") {
                return {
                    state: "El PIN es incorrecto. Revise bien.",
                    StyleClass: "Danger",
                };
            }

            // Si hay error pero no coincide con los mensajes anteriores
            return {state: "OK", StyleClass: "Warning"};
        } else {
            // Si no hay error visible
            return {
                state: "Todavía no se han enviado datos al formulario",
                StyleClass: "Info",
            };
        }
    } else {
        // Si no estamos en la página de login
        return {action: "Login" , state: "Entrando al sistema", StyleClass: "Success"};
    }
}
//
// function capturarEnlaces() {
//     // Buscar la tabla correcta
//     var tabla = document.querySelector('table[name="table[tracker_DynaDocs]"]');
//
//     if (!tabla) {
//         console.log("Tabla no encontrada");
//         return [];
//     }
//
//     // Buscar todas las filas de datos (Row1, Row2, RowX...)
//     var filas = tabla.querySelectorAll("tr[class^='Row']");
//
//     // console.log(`Se encontraron ${filas.length} fila(s)`);
//
//     const enlaces = [];
//
//     filas.forEach((fila, index) => {
//         const enlaceVista = fila.querySelector("a.tableOption");
//
//         if (enlaceVista) {
//             const href = enlaceVista.getAttribute("href");
//
//             // Obtener el título de la segunda columna
//             const celdaTitulo = fila.querySelectorAll("td")[1];
//             const titulo = celdaTitulo ? celdaTitulo.textContent.trim() : "";
//
//             enlaces.push({
//                 indice: index + 1,
//                 // titulo: titulo,
//                 href: href,
//                 // urlCompleta: window.location.origin + "/" + href,
//             });
//
//             // console.log(`Fila ${index + 1}: ${titulo} - ${href}`);
//         }
//     });
//
//     return enlaces;
// }

// capturarEnlaces();


// Ejecutar y obtener resultados
// capturarEnlaces();


// Postdata("15427436","26MU");
// getError();
//
// function getrow() {
//
//
//     var table = document.getElementById("table[cDlXUno1dllwbMKwazVwTFE0SnFyMFhYbW9jUjAyNVBtWXFqZDRB]");
//     var filas = table.querySelectorAll("tr[class^='Row']").length;
//
//     if (filas.length != 1) {
//
//
//     } else {
//
//
//     }
//
//
//     console.log(filas);
// }
//
// getrow()

function getstatus() {

    var url_tracker =
        "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/";

    var DYNAFORM =
        "tracker_Show?CTO_UID_OBJ=2473970175d10d8284601e4012429159&CTO_TYPE_OBJ=DYNAFORM";
/* id table es este elemento <table id="table[cDlXUno1dllwbMKwazVwTFE0SnFyMFhYbW9jUjAyNVBtWXFqZDRB]" name="table[tracker_DynaDocs]" cellspacing="0" cellpadding="0" width="100%" class="pagedTable"> */
    var idtable = "table[cDlXUno1dllwbMKwazVwTFE0SnFyMFhYbW9jUjAyNVBtWXFqZDRB]";
    var get_table = document.querySelector(`#${CSS.escape(idtable)}`);

    if (!get_table) {
        // return { state: "Tabla no encontrada", StyleClass: "Error" };
    }

    var filas = get_table.querySelectorAll('tr[class^="Row"]');
    var rows_count = filas.length;

    var enlaces = [];
    filas.forEach((fila, index) => {
        var enlace = fila.querySelector("a.tableOption");
        if (enlace) {
            enlaces.push({
                fila: index + 1,
                href: enlace.getAttribute("href")
            });
        }
    });

    // 🔹 CASO 2 FILAS
    if (rows_count === 2 && enlaces.length > 0) {

        setTimeout(() => {
            window.location.href = url_tracker + enlaces[0].href;
        }, 1500);

        return {
            action: "open_document",
            state: "Certificación disponible para descargar",
            StyleClass: "Success"
        };
    }

    // 🔹 CASO 1 FILA
    if (rows_count === 1 && enlaces.length > 0) {

        if (enlaces[0].href === DYNAFORM) {
            setTimeout(() => {
                window.location.href = url_tracker + enlaces[0].href;
            }, 1500)


            return {
                state: "Certificación no disponible para descargar. Obteniendo el estado de la misma",
                StyleClass: "Danger"
            }






        }

        return {
            state: "Formulario pendiente",
            StyleClass: "Warning"
        };
    }

    return {
        state: "Sin resultados",
        StyleClass: "Info"
    };
}




// getstatus();
