const url_login = 'https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/login';
const url_tracker = 'https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/';
const tracker_DynaDocs = 'tracker_DynaDocs'
const INPUT_DOCUMENT = 'tracker_Show?CTO_UID_OBJ=7745944765ce5972287f1f0082113289&CTO_TYPE_OBJ=INPUT_DOCUMENT'
const DYNAFORM = 'tracker_Show?CTO_UID_OBJ=2473970175d10d8284601e4012429159&CTO_TYPE_OBJ=DYNAFORM'

function loadweb() {
    window.location.href = url_login;
    return { state: 'Cargando.', StyleClass: 'Info' };

};




/**
 * Envía datos al formulario de certificaciones del sitio del MINJUS.
 *
 * Esta función localiza los campos del formulario HTML correspondientes
 * al número de caso y al PIN, les asigna los valores proporcionados y
 * simula el clic del botón de envío.
 *
 * @function Postdata
 * @param {string} cases - Número del caso que se desea consultar o procesar.
 * @param {string} pin - Código PIN asociado al caso.
 * @returns {{state: string, message?: string}} Objeto con el estado de la operación:
 *   - `{ state: "OK" }` si los datos se enviaron correctamente.
 *   - `{ state: "ERROR", message: string }` si faltan elementos del formulario.
 *
 * @example
 * const result = Postdata("15427436", "26MU");
 * console.log(result.state); // "OK"
 */
function Postdata(cases, pin) {
    const caseInput = document.getElementById("form[CASE]");
    const pinInput = document.getElementById("form[PIN]");
    const submitButton = document.getElementById("form[BSUBMIT]");

    // Verificar que los elementos existen antes de usarlos
    if (!caseInput || !pinInput || !submitButton) {
        console.error("❌ Error: No se encontraron uno o más elementos del formulario.");
        return {state: "ERROR", message: "Elementos no encontrados"};
    }

    // Asignar valores
    caseInput.value = cases;
    pinInput.value = pin;

    // Enviar formulario
    submitButton.click();

    // Devolver respuesta
    return {state: "OK"};
}

/**
 * Verifica el estado del formulario en la página del MINJUS.
 *
 * Esta función detecta si la página actual es la de inicio de sesión
 * y analiza si existe un mensaje de error en el elemento con ID `temporalMessageERROR`.
 *
 * @function getError
 * @returns {{state: string, msg?: string}} Objeto que describe el estado:
 *   - `{ state: "ERROR", msg: string }` si se encontró un mensaje de error en pantalla.
 *   - `{ state: "WAIT", msg: string }` si la página está cargada pero aún no se enviaron datos.
 *   - `{ state: "OK" }` si no hay errores y no se está en la página de login.
 *
 * @example
 * const result = getError();
 * console.log(result.state); // "OK", "WAIT" o "ERROR"
 */
function getError() {
    const isLoginPage = window.location.href.includes("/sysmin_jus/es-ES/minjus/tracker/login");
    const error = document.getElementById("temporalMessageERROR");

    // Si estamos en la página de login
    if (isLoginPage) {

        // Si existe el div de error
        if (error) {
            const text = error.innerText.trim();

            if (text === 'ERROR: El caso no existe') {
                return { state: 'Por favor, el caso no existe. Revise de nuevo.', StyleClass: 'Danger' };
            }

            if (text === 'ERROR: El PIN es inválido') {
                return { state: 'El PIN es incorrecto. Revise bien.', StyleClass: 'Danger' };
            }

            // Si hay error pero no coincide con los mensajes anteriores
            return { state: text, StyleClass: 'Warning' };

        } else {
            // Si no hay error visible
            return { state: 'Todavía no se han enviado datos al formulario', StyleClass: 'Info' };
        }

    } else {
        // Si no estamos en la página de login
        return { state: 'Entrando al sistema', StyleClass: 'Success' };
    }
}





// Detectar el número de filas y capturar enlaces
function capturarEnlaces() {
    // Buscar la tabla
    const tabla = document.querySelector('table[name="pagedtable[tracker_DynaDocs]"]');

    if (!tabla) {
        console.log('Tabla no encontrada');
        return;
    }

    // Buscar todas las filas con clase Row1 o Row2 (las filas de datos)
    const filas = tabla.querySelectorAll('tr.Row1, tr.Row2');

    console.log(`Se encontraron ${filas.length} fila(s)`);

    // Array para almacenar los enlaces
    const enlaces = [];

    // Recorrer cada fila
    filas.forEach((fila, index) => {
        // Buscar el enlace "Vista" en la fila
        const enlaceVista = fila.querySelector('a.tableOption');

        if (enlaceVista) {
            const href = enlaceVista.getAttribute('href');
            const titulo = fila.querySelectorAll('td')[1]?.textContent.trim();

            enlaces.push({
                indice: index + 1,
                titulo: titulo,
                href: href,
                urlCompleta: window.location.origin + '/' + href
            });

            console.log(`Fila ${index + 1}: ${titulo} - ${href}`);
        }
    });

    return enlaces;
}

// Ejecutar y obtener resultados
 capturarEnlaces();



















 // getError();



// Postdata("15427436","26MU");
