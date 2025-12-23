var url_login =
    "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/login";
var url_tracker =
    "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/";
var tracker_DynaDocs = "tracker_DynaDocs";
var INPUT_DOCUMENT =
    "tracker_Show?CTO_UID_OBJ=7745944765ce5972287f1f0082113289&CTO_TYPE_OBJ=INPUT_DOCUMENT";
var DYNAFORM =
    "tracker_Show?CTO_UID_OBJ=2473970175d10d8284601e4012429159&CTO_TYPE_OBJ=DYNAFORM";


function Postdata(cases, pin) {
    const caseInput = document.getElementById("form[CASE]");
    const pinInput = document.getElementById("form[PIN]");
    const submitButton = document.getElementById("form[BSUBMIT]");

    // Verificar que los elementos existen antes de usarlos
    if (!caseInput || !pinInput || !submitButton) {
        console.error(
            "❌ Error: No se encontraron uno o más elementos del formulario."
        );
        return { state: "ERROR", message: "Elementos no encontrados" };
    }

    // Asignar valores
    caseInput.value = cases;
    pinInput.value = pin;

    // Enviar formulario
    submitButton.click();

    // Devolver respuesta
    return { state: "OK" };

}

function getError() {
    const isLoginPage = window.location.href.includes(
        "/sysmin_jus/es-ES/minjus/tracker/login"
    );
    const error = document.getElementById("temporalMessageERROR");

    // Si estamos en la página de login
    if (isLoginPage) {
        // Si existe el div de error
        if (error) {
            const text = error.innerText.trim();

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
            return { state: text, StyleClass: "Warning" };
        } else {
            // Si no hay error visible
            return {
                state: "Todavía no se han enviado datos al formulario",
                StyleClass: "Info",
            };
        }
    } else {
        // Si no estamos en la página de login
        return { state: "Entrando al sistema", StyleClass: "Success" };
    }
}

function capturarEnlaces() {
    // Buscar la tabla correcta
    var tabla = document.querySelector('table[name="table[tracker_DynaDocs]"]');

    if (!tabla) {
        console.log("Tabla no encontrada");
        return [];
    }

    // Buscar todas las filas de datos (Row1, Row2, RowX...)
    var filas = tabla.querySelectorAll("tr[class^='Row']");

    // console.log(`Se encontraron ${filas.length} fila(s)`);

    const enlaces = [];

    filas.forEach((fila, index) => {
        const enlaceVista = fila.querySelector("a.tableOption");

        if (enlaceVista) {
            const href = enlaceVista.getAttribute("href");

            // Obtener el título de la segunda columna
            const celdaTitulo = fila.querySelectorAll("td")[1];
            const titulo = celdaTitulo ? celdaTitulo.textContent.trim() : "";

            enlaces.push({
                indice: index + 1,
                // titulo: titulo,
                href: href,
                // urlCompleta: window.location.origin + "/" + href,
            });

            // console.log(`Fila ${index + 1}: ${titulo} - ${href}`);
        }
    });

    return enlaces;
}

capturarEnlaces();


// Ejecutar y obtener resultados
// capturarEnlaces();


// Postdata("15427436","26MU");
// getError();

function getrow() {


    var table = document.getElementById("table[cDlXUno1dllwbMKwazVwTFE0SnFyMFhYbW9jUjAyNVBtWXFqZDRB]");
    var filas = table.querySelectorAll("tr[class^='Row']").length;

    if (filas.length != 1) {


    } else {


    }


    console.log(filas);
}

getrow()