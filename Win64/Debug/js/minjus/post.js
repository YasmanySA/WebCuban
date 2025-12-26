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
    var caseInput = document.getElementById("form[CASE]");
    var pinInput = document.getElementById("form[PIN]");
    var submitButton = document.getElementById("form[BSUBMIT]");

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


    // if (!submitButton.click()) {
    // } else {
    //     // Devolver respuesta
    //     return {state: "OK"};
    //     //
    //     // return getError();
    // }


}

// Postdata("10367105","7gc9")



// getError()
